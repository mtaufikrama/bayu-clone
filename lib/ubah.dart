import 'package:flutter/material.dart';

class NightMode with ChangeNotifier {
  bool nightMode = false;

  bool get isWarna => nightMode;

  set isWarna(bool ubahWarna) {
    nightMode = ubahWarna;
    notifyListeners();
  }

  Color get backWarna => nightMode ? Colors.black : Colors.white;
  Color get teksWarna => nightMode ? Colors.white : Colors.black;
}
