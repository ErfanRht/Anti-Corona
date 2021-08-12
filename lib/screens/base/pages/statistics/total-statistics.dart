import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class TotalStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                          "4,281,217",
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
                          "95,647",
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 100,
              width: (MediaQuery.of(context).size.width - 40) / 3,
              decoration: BoxDecoration(
                  color: Color(0xff9059FF),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 15),
                        child: Text(
                          "بدحال",
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
                          "6,932",
                          style: TextStyle(color: Colors.white, fontSize: 22.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 0),
              height: 100,
              width: (MediaQuery.of(context).size.width - 40) / 3,
              decoration: BoxDecoration(
                  color: Color(0xff4DB5FF),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10),
                        child: Text(
                          "درحال حاضر",
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
                          "567,346",
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
              width: (MediaQuery.of(context).size.width - 40) / 3,
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
                          "3,618,224",
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
