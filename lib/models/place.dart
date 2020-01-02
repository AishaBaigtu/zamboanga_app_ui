import 'package:flutter/material.dart';

class Place extends ChangeNotifier {
  List<String> _placeName = ["Name 1", "Name 2", "Name 3"];
  List<String> _location = ["Location 1", "Location 2", "Location 3"];
  List<String> _details = ["Details 1", "Details 2", "Details 3"];
  List<bool> _halal = [true, false, true];
  List<String> _image = [
    "images/image1.png",
    "images/image1.png",
    "images/image2.png"
  ];

  List<String> get placeName => _placeName;
  List<String> get location => _location;
  List<String> get details => _details;
  List<bool> get halal => _halal;
  List<String> get image => _image;

  set placeName(List<String> val) {
    _placeName = val;
    notifyListeners();
  }

  set location(List<String> val) {
    _location = val;
    notifyListeners();
  }

  set details(List<String> val) {
    _details = val;
    notifyListeners();
  }

  set halal(List<bool> val) {
    _halal = val;
    notifyListeners();
  }

  set image(List<String> val) {
    _image = val;
    notifyListeners();
  }
}
