import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/screens/base/pages/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class PreventionBox extends StatefulWidget {
  Prevention prevention;
  PreventionBox({@required this.prevention});
  @override
  _PreventionBoxState createState() => _PreventionBoxState();
}

class _PreventionBoxState extends State<PreventionBox> {
  final HomeController homeController = Get.put(HomeController());
  String text;
  String image;
  String url;

  double _opacity;
  EdgeInsets _padding;
  bool onHover;
  @override
  void initState() {
    super.initState();
    switch (widget.prevention) {
      case Prevention.MASK:
        text = "ماسک زدن";
        image = 'assets/images/prevention/mask.png';
        url =
            'https://www.irna.ir/news/84065765/%D9%85%D8%A7%D8%B3%DA%A9-%D8%B2%D8%AF%D9%86-%D9%88-%D9%81%D8%A7%D8%B5%D9%84%D9%87-%DA%AF%D8%B0%D8%A7%D8%B1%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C-%D8%AF%D9%88-%D8%B1%D8%A7%D9%87%DA%A9%D8%A7%D8%B1-%D8%B3%D8%A7%D8%AF%D9%87-%D8%A8%D8%B1%D8%A7%DB%8C-%D9%85%D9%87%D8%A7%D8%B1-%DA%A9%D8%B1%D9%88%D9%86%D8%A7';
        break;
      case Prevention.WASH_HAND:
        text = "شستن دست ها";
        image = 'assets/images/prevention/wash-hand.png';
        url =
            'https://www.unicef.org/iran/stories/%D9%87%D8%B1-%D8%A2%D9%86%DA%86%D9%87-%DA%A9%D9%87-%D8%AF%D8%B1%D8%A8%D8%A7%D8%B1%D9%87-%D8%B4%D8%B3%D8%AA%D8%B4%D9%88%DB%8C-%D8%AF%D8%B3%D8%AA%E2%80%8C%D9%87%D8%A7-%D8%A8%D8%B1%D8%A7%DB%8C-%D9%85%D9%82%D8%A7%D8%A8%D9%84%D9%87-%D8%A8%D8%A7-%D9%88%DB%8C%D8%B1%D9%88%D8%B3-%DA%A9%D8%B1%D9%88%D9%86%D8%A7-%D8%A8%D8%A7%DB%8C%D8%AF-%D8%A8%D8%AF%D8%A7%D9%86%DB%8C%D9%85';
        break;
      case Prevention.DISTANCE:
        text = "فاصله اجتماعی";
        image = 'assets/images/prevention/distance.png';
        url =
            'https://www.irna.ir/news/84065765/%D9%85%D8%A7%D8%B3%DA%A9-%D8%B2%D8%AF%D9%86-%D9%88-%D9%81%D8%A7%D8%B5%D9%84%D9%87-%DA%AF%D8%B0%D8%A7%D8%B1%DB%8C-%D8%A7%D8%AC%D8%AA%D9%85%D8%A7%D8%B9%DB%8C-%D8%AF%D9%88-%D8%B1%D8%A7%D9%87%DA%A9%D8%A7%D8%B1-%D8%B3%D8%A7%D8%AF%D9%87-%D8%A8%D8%B1%D8%A7%DB%8C-%D9%85%D9%87%D8%A7%D8%B1-%DA%A9%D8%B1%D9%88%D9%86%D8%A7';
        break;
    }
    onHover = false;
    if (!homeController.animationCompleed) {
      _opacity = 0;
      _padding = EdgeInsets.only(top: 15);

      animationController();
    } else {
      _opacity = 1;
      _padding = EdgeInsets.only(bottom: 15);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchInBrowser(url: url);
      },
      // splashColor: kPrimaryColor.withOpacity(0.1),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHighlightChanged: (status) {
        if (status) {
          setState(() {
            onHover = true;
          });
        } else {
          setState(() {
            onHover = false;
          });
        }
      },

      child: AnimatedOpacity(
        opacity: onHover ? 0.5 : 1,
        duration: Duration(milliseconds: 150),
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 1000),
          child: AnimatedPadding(
            padding: _padding,
            duration: Duration(milliseconds: 500),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 120,
                ),
                Center(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  animationController() async {
    await Future.delayed(Duration(milliseconds: 250));
    if (widget.prevention == Prevention.DISTANCE) {
      setState(() {
        _opacity = 1;
        _padding = EdgeInsets.only(bottom: 15);
      });
    } else if (widget.prevention == Prevention.WASH_HAND) {
      await Future.delayed(Duration(milliseconds: 500));
      setState(() {
        _opacity = 1;
        _padding = EdgeInsets.only(bottom: 15);
      });
    } else if (widget.prevention == Prevention.MASK) {
      await Future.delayed(Duration(milliseconds: 1000));
      setState(() {
        _opacity = 1;
        _padding = EdgeInsets.only(bottom: 15);
      });
      Get.find<HomeController>().updateHome(newAnimationCompleed: true);
    }
  }

  Future<void> _launchInBrowser({@required String url}) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
