import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatuFood {
  final String name, img;

  FeatuFood({required this.name, required this.img});
}

List<FeatuFood> featuList = [
  FeatuFood(
    name: 'Healthy',
    img:
        'https://png.pngtree.com/png-clipart/20190516/original/pngtree-healthy-food-png-image_3776802.jpg',
  ),
  FeatuFood(
    name: ' Sushi',
    img:
        'https://s3-alpha-sig.figma.com/img/f809/70ed/4b26077300eaa62478d2f79da557adb9?Expires=1650240000&Signature=OGrMM5jL3gphaC3m-1kSAYfi5nI9WJhJi2QoZo5Hrj5tm4NvA2q1D2L8c0ylSSm-gsMn1FeIIAnnQPZmNVXpBK~jqKpChERCilAscWOoW0EZqPX14i7TcVDTn0Qp11Wz-hdCEOrEXM5jQHX~2VQUPeAqBGEmiEayHa11PhoTI9rS8gqaU5P2cmac5URJL~TnfGtkPvQTntRyCSGF0I25nnzHIUO6H3m53pBBbWnXs7qkm~Ny5CP4zjJMDm6HoMMR4VzWD9StbLCK57hWXrp9r0sC8KJkSeyQ2WReL9-qrUAeI1LquEfXNripJZqmFdno3lJ2N6LbogxRRBWvSQd-9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
  FeatuFood(
    name: ' Meat',
    img:
        'https://www.freepnglogos.com/uploads/meat-png/meat-grilled-food-png-transparent-grilled-food-images-30.png',
  ),
  FeatuFood(
    name: 'Nearby',
    img:
        'https://freepikpsd.com/file/2019/10/food-salad-image-2962-food-png-picture-of-food-png-428_230.png',
  ),
];

class AboutTab extends StatefulWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 5,
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                title: const Text('Timberland, Shop G38, G/F, Mikiki, No.'),
                subtitle:
                    const Text('638 Prince Edward Road East, San Po K...'),
                leading: const Icon(
                  Icons.location_pin,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: const Text('+852 6600 2394'),
                leading: const Icon(
                  Icons.phone,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'View all ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: 500,
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: featuList.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(top: 15, left: 3, right: 3),
                          child: Stack(
                            children: [
                              Container(
                                width: 130,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: const NetworkImage(
                                      'https://s3-alpha-sig.figma.com/img/f809/70ed/4b26077300eaa62478d2f79da557adb9?Expires=1650240000&Signature=OGrMM5jL3gphaC3m-1kSAYfi5nI9WJhJi2QoZo5Hrj5tm4NvA2q1D2L8c0ylSSm-gsMn1FeIIAnnQPZmNVXpBK~jqKpChERCilAscWOoW0EZqPX14i7TcVDTn0Qp11Wz-hdCEOrEXM5jQHX~2VQUPeAqBGEmiEayHa11PhoTI9rS8gqaU5P2cmac5URJL~TnfGtkPvQTntRyCSGF0I25nnzHIUO6H3m53pBBbWnXs7qkm~Ny5CP4zjJMDm6HoMMR4VzWD9StbLCK57hWXrp9r0sC8KJkSeyQ2WReL9-qrUAeI1LquEfXNripJZqmFdno3lJ2N6LbogxRRBWvSQd-9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                    ),
                                    colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.6),
                                      BlendMode.darken,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Positioned(
                                  left: 35,
                                  top: 25,
                                  child: Text(
                                    featuList[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Discount',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.percent,
                            color: Colors.blueAccent,
                            size: 13,
                          ),
                          Text(
                            ' Hk \$10 after hk\$200 immediately',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.percent,
                            color: Colors.blueAccent,
                            size: 13,
                          ),
                          Text(
                            ' Consumption can knock HK \$4.00',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.percent,
                            color: Colors.blueAccent,
                            size: 13,
                          ),
                          Text(
                            ' HK \$30 after HK \$400 immediately',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Card(
          child: ListTile(
            title: Text(
              'Info',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                'The first and best premium social dining food hall of Hong Kong with the city`s finest F&B operators all under one roof.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
