import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/about/app-bar.dart';
import 'package:coronavirus/widgets/affects-item.dart';
import 'package:coronavirus/widgets/affects-title.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(parent: ClampingScrollPhysics()),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  AffectsTitle(
                    text: "شایع­ترین علائم :",
                    index: 0,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      AffectsItem(
                        text: "تب",
                        index: 1,
                      ),
                      AffectsItem(
                        text: "سرفه‌­ی خشک",
                        index: 1,
                      ),
                      AffectsItem(
                        text: "خستگی",
                        index: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AffectsTitle(
                    text: "علائمی که کم­تر شایع است :",
                    index: 2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      AffectsItem(
                        text: "کوفتگی و درد",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "گلودرد",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "اسهال",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "ورم",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "سردرد",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "از دست دادن بویایی یا چشایی",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "جوش زدن پوست",
                        index: 3,
                      ),
                      AffectsItem(
                        text: "رنگ­ پریدگی انگشتان دست و پا",
                        index: 3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AffectsTitle(
                    text: "علائم جدی کرونا :",
                    index: 4,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      AffectsItem(
                        text: "به سختی نفس کشیدن یا کم ­آوردن نفس",
                        index: 5,
                      ),
                      AffectsItem(
                        text: "درد یا فشار روی قفسه­ ی سینه",
                        index: 5,
                      ),
                      AffectsItem(
                        text: "از دست دادن توانایی حرکت یا تکلم",
                        index: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            AboutAppBar(),
          ],
        ));
  }
}
