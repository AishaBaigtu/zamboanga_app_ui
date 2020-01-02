import 'package:flutter/material.dart';

class SavedPlace extends ChangeNotifier {
  List<String> _placeName=[];
  List<String> _location=[];
  List<String> _details=[];
  List<bool> _halal=[];
  List<String> _image=[];
  List<int> _index=[];

  String _newPlaceName;
  String _newLocation;
  String _newDetails;
  bool _newHalal;
  int _newIndex;

  List<String> get placeName => _placeName;
  List<String> get location => _location;
  List<String> get details => _details;
  List<bool> get halal => _halal;
  List<String> get image => _image;
  List<int> get index => _index;
  int get newIndex => _newIndex;

  String get newPlaceName => _newPlaceName;
  String get newLocation => _newLocation;
  String get newDetails => _newDetails;
  bool get newHalal => _newHalal;

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

  set index(List<int> val) {
    _index = val;
    notifyListeners();
  }

  set image(List<String> val) {
    _image = val;
    notifyListeners();
  }

  set newPlaceName(String val) {
    _newPlaceName = val;
    notifyListeners();
  }

  set newLocation(String val) {
    _newLocation = val;
    notifyListeners();
  }

  set newDetails(String val) {
    _newDetails = val;
    notifyListeners();
  }

  set newHalal(bool val) {
    _newHalal = val;
    notifyListeners();
  }

  set newIndex(int val) {
    _newIndex = val;
    notifyListeners();
  }

  add() {
    _placeName.add(newPlaceName);
    _location.add(newLocation);
    _details.add(newDetails);
    _halal.add(newHalal);
    _index.add(newIndex);
    notifyListeners();
  }



  remove() {
    _placeName.removeAt(index.indexOf(newIndex));
    _location.removeAt(index.indexOf(newIndex));
    _details.removeAt(index.indexOf(newIndex));
    _halal.removeAt(index.indexOf(newIndex));
    _index.removeAt(index.indexOf(newIndex));
    notifyListeners();
  }


}