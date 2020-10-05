import 'package:flutter/foundation.dart';

class Model extends ChangeNotifier {
  int number = 0;
  int getNumber() => number;

  addAnotherNumber() {
    // ignore: unnecessary_statements
    number ++;
    notifyListeners();
  }
  changeVaalueToZero(){
    number = 0;
    notifyListeners();
  }
}
