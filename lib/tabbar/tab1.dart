import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasans_tz/detail/details.dart';

class Food {
  final String name;
  final String subname;
  final String img;

  Food({required this.name, required this.subname, required this.img});
}

List<Food> foodList = [
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
    name: 'Sushi Dishes',
    subname: 'Nori, Rice, Sushi Vinegar, Salt',
    img:
        'https://s3-alpha-sig.figma.com/img/ddc3/a9b6/3a4edfaf7dfc87760a9481e2cc6ecd24?Expires=1650240000&Signature=KykMGZalJamfiRnnEO-aNJeEwSaxlyD7hQFeJ5YqPtWmuj2fKDfqRVQteVq9IVKt8QUK-GG-EtxHTCn1ur8YLEd5BN5TeL85olHN-gzKUaSAfCaRuTQg91vWryb2l3J5fExDCcNDcOZ2Ea-yN1fQmwgyJ6pVZIgLAdmStnJvwTW8wvW7NZQSPJ2lY4Wori0ma5DZzL3tTXA8weYZAcfJS54KKtsbQ7kJ3qvC7sVrsJwuQY9ZOIY9iVVctLEH0uF3rFZGJqS4RNZ0tsnq3zSLcPwtpIVhRUyQQSve6bvKYTrs83QazdE7C8Qu74Pfss~OKtjJ0DMXOcTfZhUWrNSTuQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
  ),
];

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodList.length,
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
                    name: foodList[index].name,
                    img: foodList[index].img,
                  ),
                ),
              );
            },
            title: Text(
              foodList[index].name,
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
                      foodList[index].subname,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const Text('HK\$100.00',
                        style: TextStyle(fontSize: 13, color: Colors.black))
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
                fit: BoxFit.cover,
                image: NetworkImage(foodList[index].img),
              ),
            ),
          ),
        );
      },
    );
  }
}
