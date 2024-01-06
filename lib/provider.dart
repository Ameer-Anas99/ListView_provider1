import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  List<String> food = ["Biriyani", "Mandhi", "Madhooth", "Gree Rice", "Rice"];
  List<String> vehicle = ["BMW", "Benz", "Jeep", "Mahindra", "Volvo", "Toyota"];
  List data = [];
  TextEditingController textcontroller = TextEditingController();

  void adddatas() {
    final inpuvalue = textcontroller.text.trim();
    if (inpuvalue == "food") {
      data.clear();
      for (String element in food) {
        data.add(element);
      }
      notifyListeners();
    } else if (inpuvalue == "vehicle") {
      data.clear();
      for (String element in vehicle) {
        data.add(element);
      }
      notifyListeners();
    } else {
      data.clear();
      data.add("invalid");

      notifyListeners();
    }
  }
}
