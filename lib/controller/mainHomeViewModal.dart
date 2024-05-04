import 'package:flutter/cupertino.dart';

class MainHomeViewViewModal extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  changeIndexAccordingScreen(int index) {
    _currentIndex = index;
    print("Current index: $_currentIndex");
    notifyListeners();
  }
}
