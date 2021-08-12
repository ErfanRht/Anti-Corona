import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MakeCallButton extends StatefulWidget {
  @override
  _MakeCallButtonState createState() => _MakeCallButtonState();
}

class _MakeCallButtonState extends State<MakeCallButton> {
  bool buttonHover = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          _makePhoneCall('tel:4030');
        },
        onHighlightChanged: (status) {
          if (status) {
            setState(() {
              buttonHover = true;
            });
          } else {
            setState(() {
              buttonHover = false;
            });
          }
        },
        child: AnimatedOpacity(
          opacity: buttonHover ? 0.925 : 1,
          duration: Duration(milliseconds: 50),
          child: Container(
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width - 40,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffFF4B58)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_rounded,
                    size: 26,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "همین حالا تماس بگیرید!",
                    style: TextStyle(color: Colors.white, fontSize: 22.5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
