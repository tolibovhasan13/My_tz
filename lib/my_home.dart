import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hasans_tz/bottom_bar/my_bottom_bar.dart';
import 'package:hasans_tz/tabbar/tab1.dart';


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  const Image(
                    width: double.infinity,
                    height: 240,
                    image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/bfd6/2f39/df3ac785914a82de9a5dfe502e29807e?Expires=1650240000&Signature=J4nyLgAEw4mUYTA9dNoUqLG3hkrXp7jaKRcwBS9By3lLbUsyHOQfjhzaV-EjJr1AjKedr2jqYkLsqCQXg1mRWpjeVlWZs9XXeLyubRj9YKFFtl58lkV23um4fdZDUgyhalHs83d~2PcpmXVzBmFHnFMJKChv9NogsThopMigKvGdN00i5ZV6-h5aFMfjmMvebzKxAD8C6e43DXz5cwSDDJgBmLj~TxHqGcgU5X5XheQeG8hvovqlh67mC3vpOV9B7HUXbkKLmdkNcy6v1YX8lO3kvKgWMqeYHIYqtVH0mPM~sAuLVoX4cfZHX6eGHDrMNiUa3F5znccTVpV5RjpLbA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 300,
                    // ignore: avoid_unnecessary_containers
                    child: GlassContainer.frostedGlass(
                      height: 30,
                      width: 30,
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 18,
                      ),
                      borderColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BaseHall',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.store,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              'Open  |  ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.solidClock,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              '07:30AM ~ 10:00AM,  11:00AM ~ 01:00PM',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const MyBottomBar(),
                    ),
                  );
                },
                title: const Text(
                  'Take Away',
                  style: TextStyle(
                    color: Color(0xFFFBAC36),
                    fontSize: 14,
                  ),
                ),
                subtitle: const Text(
                  'Ready in 15 min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                trailing: const Text(
                  'Change',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xFFFBAC36),
                      size: 20,
                    ),
                  ],
                ),
              ),
              const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.blueAccent,
                  tabBarIndicatorSize: TabBarIndicatorSize.label,
                ),
                tabs: [
                  Tab(
                    icon: Text(
                      ' Sushi ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' Chicken ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' Sandwich ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' Salad ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' Dumpling ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, bottom: 10),
                child: Text(
                  'Sushi',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 300,
                child: const TabBarView(
                  children: [
                    Tab1(),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.shopping_cart,
                      size: 24,
                      color: Colors.black,
                    ),
                    Text(
                      '  hk\$460.50',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 170,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                    child: Text(
                      'Check Out',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
