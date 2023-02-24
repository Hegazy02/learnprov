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
