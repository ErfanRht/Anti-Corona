import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/screens/introduction/pages/page1.dart';
import 'package:coronavirus/screens/introduction/pages/page2.dart';
import 'package:coronavirus/screens/introduction/pages/page3.dart';
import 'package:coronavirus/screens/introduction/pages/page4.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, base_route);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: kPrimaryColor,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light));
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color(0xffFFFFFF),
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          child: const Text(
            'رد شدن از صفحه معرفی',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => _onIntroEnd(context),
        ),
      ),
      pages: [
        PageViewModel(
          bodyWidget: IntroPage1(),
          titleWidget: Container(),
          decoration: pageDecoration,
        ),
        PageViewModel(
          bodyWidget: IntroPage2(),
          titleWidget: Container(),
          decoration: pageDecoration,
        ),
        PageViewModel(
          bodyWidget: IntroPage3(),
          titleWidget: Container(),
          decoration: pageDecoration,
        ),
        PageViewModel(
          bodyWidget: IntroPage4(),
          titleWidget: Container(),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      doneColor: kPrimaryColor,
      nextColor: kPrimaryColor,
      color: kPrimaryColor,
      skipColor: kPrimaryColor,
      skip: Text('رد شدن',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17.5)),
      next: Icon(Icons.arrow_forward),
      done: Text('اتمام',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? EdgeInsets.all(12.0)
          : EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: kPrimaryColor,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
