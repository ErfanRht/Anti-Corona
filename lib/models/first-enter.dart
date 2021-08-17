import 'package:shared_preferences/shared_preferences.dart';

Future<bool> firstEnterModel() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstEnter;
  try {
    firstEnter = !prefs.getBool('logged');
  } catch (e) {
    firstEnter = true;
  }

  if (firstEnter == true) {
    prefs.setBool('logged', true);
  }

  // for debugging:
  // firstEnter = true;

  return firstEnter;
}
