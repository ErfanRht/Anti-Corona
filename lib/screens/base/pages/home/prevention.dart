import 'package:flutter/material.dart';

class HomePrevention extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 15),
          child: Row(
            children: [
              Text(
                'پیشگیری',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/prevention/mask.png',
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      "ماسک زدن",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/prevention/wash-hand.png',
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      "شستن دست ها",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/images/prevention/distance.png',
                    height: 120,
                  ),
                  Center(
                    child: Text(
                      "فاصله اجتماعی",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
