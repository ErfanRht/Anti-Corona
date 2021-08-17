import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/models/set-system-ui-overlay-style.dart';
import 'package:coronavirus/screens/base/pages/about/controller.dart';
import 'package:coronavirus/widgets/affects-item.dart';
import 'package:coronavirus/widgets/affects-title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:ms_undraw/ms_undraw.dart';

class AboutScreen extends StatelessWidget {
  final AboutController aboutController = Get.put(AboutController());
  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(systemUIOverlayStyle: SystemUIOverlayStyle.DARK);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(parent: ClampingScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 55, top: 35),
                  child: UnDraw(
                    color: Color(0xff1D2366),
                    illustration: UnDrawIllustration.medicine,
                    placeholder: SpinKitDoubleBounce(
                      color: Colors.white,
                      size: 30,
                    ),
                    errorWidget:
                        Icon(Icons.error_outline, color: Colors.red, size: 50),
                  ),
                ),
              ),
              centerTitle: true,
              title: Text("علائم ویروس کرونا",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.5,
                  )),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return SingleChildScrollView(
                  physics:
                      BouncingScrollPhysics(parent: ClampingScrollPhysics()),
                  child: Column(
                    children: [
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
                            index: 2,
                          ),
                          AffectsItem(
                            text: "خستگی",
                            index: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AffectsTitle(
                        text: "علائمی که کم­تر شایع است :",
                        index: 4,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          AffectsItem(
                            text: "کوفتگی و درد",
                            index: 5,
                          ),
                          AffectsItem(
                            text: "گلودرد",
                            index: 6,
                          ),
                          AffectsItem(
                            text: "اسهال",
                            index: 7,
                          ),
                          AffectsItem(
                            text: "ورم",
                            index: 8,
                          ),
                          AffectsItem(
                            text: "سردرد",
                            index: 9,
                          ),
                          AffectsItem(
                            text: "از دست دادن بویایی یا چشایی",
                            index: 10,
                          ),
                          AffectsItem(
                            text: "جوش زدن پوست",
                            index: 11,
                          ),
                          AffectsItem(
                            text: "رنگ­ پریدگی انگشتان دست و پا",
                            index: 12,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AffectsTitle(
                        text: "علائم جدی کرونا :",
                        index: 13,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        children: [
                          AffectsItem(
                            text: "به سختی نفس کشیدن یا کم ­آوردن نفس",
                            index: 14,
                          ),
                          AffectsItem(
                            text: "درد یا فشار روی قفسه­ ی سینه",
                            index: 15,
                          ),
                          AffectsItem(
                            text: "از دست دادن توانایی حرکت یا تکلم",
                            index: 16,
                          ),
                          AffectsItem(
                            text: "سرگیجه بی‌سابقه",
                            index: 17,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
