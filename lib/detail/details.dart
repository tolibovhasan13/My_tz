import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const _horizontalPadding = 22.0;
const _carouselItemMargin = 8.0;

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.name, required this.img}) : super(key: key);
  final String name;
  final String img;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  late PageController pageController;
  int currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final width = MediaQuery.of(context).size.width;
    const padding = (_horizontalPadding * 2) - (_carouselItemMargin * 2);
    pageController = PageController(
      initialPage: currentPage,
      viewportFraction: (width - padding) / width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: 400,
            height: 300,
            child: PageView(
              onPageChanged: (index) {
                setState(() => currentPage = index);
              },
              controller: pageController,
              children: <Widget>[
                for (int i = 0; i < 3; i++) buildItem(i),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'HK\$24.00',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'To prep ahead for your party, you can make the fillings the night before. These crispy Japanese Spring Rolls make the perfect finger foods.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: CupertinoButton(
              color: Colors.blueAccent,
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 1000),
                    content: Text(widget.name + ' Added to Cart'),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value;
        if (pageController.position.haveDimensions) {
          value = (pageController.page! - index);
        } else {
          // If haveDimensions is false, use _currentPage to calculate value.
          value = (currentPage - index).toDouble();
        }
        value = (1 - (value.abs() * .5)).clamp(0, 1).toDouble();
        value = Curves.easeOut.transform(value);

        return Center(
          child: Transform(
            transform: Matrix4.diagonal3Values(1.0, value, 1.0),
            alignment: Alignment.center,
            child: Container(
              width: 300,
              height: 300,
              margin: const EdgeInsets.all(8),
              child: Image(
                image: NetworkImage(widget.img),
              ),
            ),
          ),
        );
      },
    );
  }
}
