// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hasans_tz/bottom_sheet/my_bottom_sheet.dart';
import 'package:hasans_tz/tabbar/about.dart';
import 'package:hasans_tz/tabbar/take_tabbar.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class TakeAvay extends StatefulWidget {
  const TakeAvay({Key? key}) : super(key: key);

  @override
  State<TakeAvay> createState() => _TakeAvayState();
}

class _TakeAvayState extends State<TakeAvay> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  const Image(
                    width: double.infinity,
                    height: 260,
                    image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/5e6c/01a7/89091717761752526d385862d10ae5fe?Expires=1650240000&Signature=SBpocVhzkhspCZMWDwUZovCof8~Z3B8cbgUB50Y0c~waocwiW5U9LECWCgOih26yC7EBg9r6IZz1mD6kM5J8NCc8GtUz-s7iRZ21eYXq96liA9DtM2YgldJessZMeRpnvckhgGY3P1J0vvKrNz~Eb7nT56y0o-UQQejBt7ey6A8x55wH4s-8RhMsf4QPaP5Xzn03pyH9AFimKC7ANmQUVameWBvsnA7mIlaNmYUM96fWGNA74zjj8CgAmyWyaV6bU~YZ-pPouoSSOd8bMQCyjGsGagTitSIY2xzyogSzwKGwbvnWeqHzFFDfzFHpg--V1345xs9auzVFBzGxvikoog__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: GlassContainer.frostedGlass(
                      height: 30,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
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
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return const MyBottomSheet();
                      },
                    );
                  },
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
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                isScrollable: false,
                indicator: BubbleTabIndicator(
                  indicatorHeight: 25.0,
                  indicatorColor: Colors.blueAccent,
                  tabBarIndicatorSize: TabBarIndicatorSize.label,
                ),
                tabs: [
                  Tab(
                    icon: Text(
                      ' Dine In ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' Take Away ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      ' About Us ',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // ignore: sized_box_for_whitespace
              Container(
                height: 550,
                child: const TabBarView(
                  children: [
                    TakeTabbar(),
                    Text(''),
                    AboutTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
