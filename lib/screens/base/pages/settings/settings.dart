import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/settings/app-bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            SettingsAppBar(),
          ],
        ));
  }
}
