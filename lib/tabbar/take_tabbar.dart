// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasans_tz/detail/details.dart';
import 'package:hasans_tz/tabbar/tab1.dart';

List<Food> foodList2 = [
  Food(
    name: 'Roti Tori Speical',
    subname: 'Nori, Rice, Sushi Vinegar, Salt',
    img:
        'https://s3-alpha-sig.figma.com/img/5e6c/01a7/89091717761752526d385862d10ae5fe?Expires=1650240000&Signature=SBpocVhzkhspCZMWDwUZovCof8~Z3B8cbgUB50Y0c~waocwiW5U9LECWCgOih26yC7EBg9r6IZz1mD6kM5J8NCc8GtUz-s7iRZ21eYXq96liA9DtM2YgldJessZMeRpnvckhgGY3P1J0vvKrNz~Eb7nT56y0o-UQQejBt7ey6A8x55wH4s-8RhMsf4QPaP5Xzn03pyH9AFimKC7ANmQUVameWBvsnA7mIlaNmYUM96fWGNA74zjj8CgAmyWyaV6bU~YZ-pPouoSSOd8bMQCyjGsGagTitSIY2xzyogSzwKGwbvnWeqHzFFDfzFHpg--V1345xs9auzVFBzGxvikoog__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
  Food(
    name: 'Assorted Salmon Sushi',
    subname: 'Nori, Rice, Sushi Vinegar, Salt',
    img:
        'https://s3-alpha-sig.figma.com/img/f809/70ed/4b26077300eaa62478d2f79da557adb9?Expires=1650240000&Signature=OGrMM5jL3gphaC3m-1kSAYfi5nI9WJhJi2QoZo5Hrj5tm4NvA2q1D2L8c0ylSSm-gsMn1FeIIAnnQPZmNVXpBK~jqKpChERCilAscWOoW0EZqPX14i7TcVDTn0Qp11Wz-hdCEOrEXM5jQHX~2VQUPeAqBGEmiEayHa11PhoTI9rS8gqaU5P2cmac5URJL~TnfGtkPvQTntRyCSGF0I25nnzHIUO6H3m53pBBbWnXs7qkm~Ny5CP4zjJMDm6HoMMR4VzWD9StbLCK57hWXrp9r0sC8KJkSeyQ2WReL9-qrUAeI1LquEfXNripJZqmFdno3lJ2N6LbogxRRBWvSQd-9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
  Food(
    name: 'Assorted Salmon Sushi',
    subname: 'Smirnoff Vodka, Bombay Gin',
    img:
        'https://s3-alpha-sig.figma.com/img/4156/6208/43c61156a95efc5c4e0e1a9af33f27c0?Expires=1650240000&Signature=GVGrVx1O59bL2twL~T4kSYpkX12ZzjcHIlSpCt7RmmY2~RGo9ZpALY17jdB-dhcNfHdoE2C9NXfE3isD-3bZcTCP5XbULASdnU8HcsVKbMRc9tfxaRYdDWwKhNKStLo04U0C7nd0AjShB4SG01OYF2PzwftIZD1CUAxuw-u6NADUUZyG1g8x3hBguCw448Iru-ZX-HZ53Bwd1kriU1-AWjRdipsF6RcMe4KflmSr6qW0sJt~h8IfNfM6BE4EcrlSBtQBSl-qn5zCmdDbaLLB2Wb9BuOXKW99t2YLBadDIOVdF2UoVWw5NUCR7b5AOT4rKXVl4R2u7lR4bt7-rSrX0A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
  Food(
    name: 'Sushi Dishes',
    subname: 'Nori, Rice, Sushi Vinegar, Salt',
    img:
        'https://s3-alpha-sig.figma.com/img/ddc3/a9b6/3a4edfaf7dfc87760a9481e2cc6ecd24?Expires=1650240000&Signature=KykMGZalJamfiRnnEO-aNJeEwSaxlyD7hQFeJ5YqPtWmuj2fKDfqRVQteVq9IVKt8QUK-GG-EtxHTCn1ur8YLEd5BN5TeL85olHN-gzKUaSAfCaRuTQg91vWryb2l3J5fExDCcNDcOZ2Ea-yN1fQmwgyJ6pVZIgLAdmStnJvwTW8wvW7NZQSPJ2lY4Wori0ma5DZzL3tTXA8weYZAcfJS54KKtsbQ7kJ3qvC7sVrsJwuQY9ZOIY9iVVctLEH0uF3rFZGJqS4RNZ0tsnq3zSLcPwtpIVhRUyQQSve6bvKYTrs83QazdE7C8Qu74Pfss~OKtjJ0DMXOcTfZhUWrNSTuQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
  Food(
    name: 'Assorted Salmon Sushi',
    subname: 'Smirnoff Vodka, Bombay Gin',
    img:
        'https://s3-alpha-sig.figma.com/img/f809/70ed/4b26077300eaa62478d2f79da557adb9?Expires=1650240000&Signature=OGrMM5jL3gphaC3m-1kSAYfi5nI9WJhJi2QoZo5Hrj5tm4NvA2q1D2L8c0ylSSm-gsMn1FeIIAnnQPZmNVXpBK~jqKpChERCilAscWOoW0EZqPX14i7TcVDTn0Qp11Wz-hdCEOrEXM5jQHX~2VQUPeAqBGEmiEayHa11PhoTI9rS8gqaU5P2cmac5URJL~TnfGtkPvQTntRyCSGF0I25nnzHIUO6H3m53pBBbWnXs7qkm~Ny5CP4zjJMDm6HoMMR4VzWD9StbLCK57hWXrp9r0sC8KJkSeyQ2WReL9-qrUAeI1LquEfXNripJZqmFdno3lJ2N6LbogxRRBWvSQd-9g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
];

List spiskaList = [
  'Main',
  'Sides',
  'Dessert',
  'Pasta & Ri-sotto',
  'Tapas',
  'Shusi',
  'Chicken',
  'Sandwich',
  'Dumpling',
  'Salad'
];

class TakeTabbar extends StatefulWidget {
  const TakeTabbar({Key? key}) : super(key: key);

  @override
  State<TakeTabbar> createState() => _TakeTabbarState();
}

class _TakeTabbarState extends State<TakeTabbar> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Row(
            children: const [
              Text(
                'Signature',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Main',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 70,
                height: 500,
                color: const Color(0xFFF4F5F7),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: spiskaList.length,
                  itemBuilder: (BuildContext context, ind) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        spiskaList[ind],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: 300,
              height: 550,
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    width: 300,
                    height: 400,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: foodList2.length,
                      itemBuilder: (BuildContext context, index) {
                        // ignore: avoid_unnecessary_containers
                        return Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => DetailPage(
                                    name: foodList2[index].name,
                                    img: foodList2[index].img,
                                  ),
                                ),
                              );
                            },
                            title: Text(
                              foodList2[index].name,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      foodList2[index].subname,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'HK\$100.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.blue,
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              size: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(foodList2[index].img),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          height: 1.5,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 5),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const DetailPage(
                                    name: 'Roti Tori Speical',
                                    img: 'https://s3-alpha-sig.figma.com/img/5e6c/01a7/89091717761752526d385862d10ae5fe?Expires=1650240000&Signature=SBpocVhzkhspCZMWDwUZovCof8~Z3B8cbgUB50Y0c~waocwiW5U9LECWCgOih26yC7EBg9r6IZz1mD6kM5J8NCc8GtUz-s7iRZ21eYXq96liA9DtM2YgldJessZMeRpnvckhgGY3P1J0vvKrNz~Eb7nT56y0o-UQQejBt7ey6A8x55wH4s-8RhMsf4QPaP5Xzn03pyH9AFimKC7ANmQUVameWBvsnA7mIlaNmYUM96fWGNA74zjj8CgAmyWyaV6bU~YZ-pPouoSSOd8bMQCyjGsGagTitSIY2xzyogSzwKGwbvnWeqHzFFDfzFHpg--V1345xs9auzVFBzGxvikoog__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                  ),
                                ),
                              );
                            },
                            title: const Text(
                              'Roti Tori Speical',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Nori, Rice, Sushi Vinegar, Salt',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'HK\$100.00',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.blue,
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              size: 17,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            leading: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: const Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://s3-alpha-sig.figma.com/img/5e6c/01a7/89091717761752526d385862d10ae5fe?Expires=1650240000&Signature=SBpocVhzkhspCZMWDwUZovCof8~Z3B8cbgUB50Y0c~waocwiW5U9LECWCgOih26yC7EBg9r6IZz1mD6kM5J8NCc8GtUz-s7iRZ21eYXq96liA9DtM2YgldJessZMeRpnvckhgGY3P1J0vvKrNz~Eb7nT56y0o-UQQejBt7ey6A8x55wH4s-8RhMsf4QPaP5Xzn03pyH9AFimKC7ANmQUVameWBvsnA7mIlaNmYUM96fWGNA74zjj8CgAmyWyaV6bU~YZ-pPouoSSOd8bMQCyjGsGagTitSIY2xzyogSzwKGwbvnWeqHzFFDfzFHpg--V1345xs9auzVFBzGxvikoog__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
