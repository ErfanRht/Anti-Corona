import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/base-controller.dart';
import 'package:coronavirus/screens/base/pages/home/app-bar/make-call.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:ms_undraw/ms_undraw.dart';

class HomeAppBar extends StatelessWidget {
  AlertDialog alert = AlertDialog(
    content: Container(
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: UnDraw(
              color: kPrimaryColor,
              illustration: UnDrawIllustration.my_app,
              placeholder: SpinKitDoubleBounce(
                color: kPrimaryColor,
                size: 50,
              ),
              errorWidget:
                  Icon(Icons.error_outline, color: Colors.red, size: 50),
            ),
          ),
          Text(
            " توسعه داده شده توسط عرفان رحمتی از دبیرستان سیدالشهدا منطقه 8",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'کووید 19',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27.5,
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                      size: 33,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    })
                // Container(
                //   height: 40,
                //   width: 100,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(25)),
                //   child: Row(
                //     children: [
                //       SizedBox(
                //         height: 30,
                //         child: CircleAvatar(
                //           backgroundImage:
                //               AssetImage('assets/images/iran-flag.jpg'),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 2.5,
                //       ),
                //       Text(
                //         'ایران',
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontSize: 25,
                //             fontWeight: FontWeight.bold),
                //       )
                //     ],
                //   ),
                // )
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
          GestureDetector(
            onTap: () {
              Get.find<BaseController>().updateBase(newCurrentPage: 0);
            },
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                children: [
                  Flexible(
                      child: RichText(
                    text: TextSpan(
                      text: 'اگر هر یک از ',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20,
                          fontFamily: 'iran_sans'),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'علائم ویروس کرونا',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        TextSpan(
                            text:
                                '  را احساس می کنید، لطفا برای کمک فورا تماس بگیرید.'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
          MakeCallButton()
        ],
      ),
    );
  }
}
