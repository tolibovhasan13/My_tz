import 'package:flutter/material.dart';

List weeks = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
];

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Open Hours',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 450,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemExtent: 50,
                itemCount: weeks.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        weeks[index],
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '11:00AM - 01:30PM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '05:00PM - 10:00PM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
