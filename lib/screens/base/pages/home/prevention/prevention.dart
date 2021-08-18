import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/screens/base/pages/home/prevention/prevention-box.dart';
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
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(parent: ClampingScrollPhysics()),
            child: Row(
              children: [
                PreventionBox(prevention: Prevention.MASK),
                SizedBox(
                  width: 5,
                ),
                PreventionBox(prevention: Prevention.WASH_HAND),
                SizedBox(
                  width: 5,
                ),
                PreventionBox(prevention: Prevention.DISTANCE)
              ],
            ),
          ),
        )
      ],
    );
  }
}
