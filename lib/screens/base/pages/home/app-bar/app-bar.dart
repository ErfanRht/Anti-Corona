import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/home/app-bar/make-call.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 355,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(45),
              bottomLeft: Radius.circular(45))),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'کووید 19',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27.5,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/iran-flag.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 2.5,
                      ),
                      Text(
                        'ایران',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 20),
            child: Row(
              children: [
                Text(
                  'آیا احساس بیماری دارید؟',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    'اگر هر یک از علائم ویروس کرونا را احساس می کنید، لطفا برای کمک فورا تماس بگیرید.',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          MakeCallButton()
        ],
      ),
    );
  }
}
