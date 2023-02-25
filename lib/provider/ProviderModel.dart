import 'package:flutter/cupertino.dart';

class prov extends ChangeNotifier {
  String? name = "Omer";
  String? name2 = "Saleh";
  changename() {
    name = "Hegazy";

    notifyListeners();
  }

  changename2() {
    name2 = "Kareem";

    notifyListeners();
  }
}

class provTwo extends ChangeNotifier {
  String? nameTwo = "Omer";
  String? nameTwo2 = "Saleh";
  changenameTwo() {
    nameTwo = "Hegazy";

    notifyListeners();
  }

  changenameTwo2() {
    nameTwo2 = "Kareem";

    notifyListeners();
  }
}
