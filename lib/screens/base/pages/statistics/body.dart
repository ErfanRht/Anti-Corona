import 'package:flutter/material.dart';

class StatisticsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 10),
          child: Center(
            child: Text(
              "آمار 24 ساعت گذشته",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width - 30) / 2,
              decoration: BoxDecoration(
                  color: Color(0xffFFB25A),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Text(
                          "مبتلایان",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "42,541",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width - 30) / 2,
              decoration: BoxDecoration(
                  color: Color(0xffFF5958),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Text(
                          "فوتی ها",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "536",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0),
              height: 100,
              width: (MediaQuery.of(context).size.width - 20),
              decoration: BoxDecoration(
                  color: Color(0xff4CD97A),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10),
                        child: Text(
                          "بهبود یافتگان",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          "26,911",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
