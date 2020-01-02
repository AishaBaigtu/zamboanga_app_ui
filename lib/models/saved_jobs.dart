import 'package:flutter/material.dart';

class SavedJobs extends ChangeNotifier {
  List<String> _jobTitle = [];
  List<String> _companyName = [];
  List<String> _companyAddress = [];
  List<String> _companyDetails = [];
  List<String> _companyWebsite = [];
  List<String> _companyEmail = [];
  List<int> _index=[];


  List<String> get jobTitle => _jobTitle;
  List<String> get companyName => _companyName;
  List<String> get companyAddress => _companyAddress;
  List<String> get companyDetails => _companyDetails;
  List<String> get companyWebsite => _companyWebsite;
  List<String> get companyEmail => _companyEmail;
  List<int> get index => _index;


  set jobTitle(List<String> val) {
    _jobTitle = val;
    notifyListeners();
  }

  set companyName (List<String> val) {
    _companyName = val;
    notifyListeners();
  }

  set companyAddress(List<String> val) {
    _companyAddress = val;
    notifyListeners();
  }

  set companyDetails(List<String> val) {
    _companyDetails = val;
    notifyListeners();
  }
  set companyWebsite(List<String> val) {
    _companyWebsite = val;
    notifyListeners();
  }
  set companyEmail(List<String> val) {
    _companyEmail = val;
    notifyListeners();
  }

  set index(List<int> val) {
    _index = val;
    notifyListeners();
  }




  String _newJobTitle;
  String _newCompanyName;
  String _newCompanyAddress;
  String _newCompanyDetails;
  String _newCompanyWebsite;
  String _newCompanyEmail;
  int _newIndex;



  String get newJobTitle => _newJobTitle;
  String get newCompanyName => _newCompanyName;
  String get newCompanyAddress => _newCompanyAddress;
  String get newCompanyDetails => _newCompanyDetails;
  String get newCompanyWebsite => _newCompanyWebsite;
  String get newCompanyEmail => _newCompanyEmail;
  int get newIndex => _newIndex;



  set newJobTitle(String val) {
    _newJobTitle = val;
    notifyListeners();
  }

  set newCompanyName(String val) {
    _newCompanyName = val;
    notifyListeners();
  }

  set newCompanyAddress(String val) {
    _newCompanyAddress = val;
    notifyListeners();
  }

  set newCompanyDetails(String val) {
    _newCompanyDetails = val;
    notifyListeners();
  }

  set newCompanyWebsite(String val) {
    _newCompanyWebsite = val;
    notifyListeners();
  }

  set newCompanyEmail(String val) {
    _newCompanyEmail = val;
    notifyListeners();
  }



  set newIndex(int val) {
    _newIndex = val;
    notifyListeners();
  }

  add() {
    _jobTitle.add(newJobTitle);
    _companyName.add(newCompanyName);
    _companyAddress.add(newCompanyAddress);
    _companyDetails.add(newCompanyDetails);
    _companyWebsite.add(newCompanyWebsite);
    _companyEmail.add(newCompanyEmail);
    _index.add(newIndex);

    notifyListeners();
  }


  remove() {
    _jobTitle.removeAt(index.indexOf(newIndex));
    _companyName.removeAt(index.indexOf(newIndex));
    _companyAddress.removeAt(index.indexOf(newIndex));
    _companyDetails.removeAt(index.indexOf(newIndex));
    _companyWebsite.removeAt(index.indexOf(newIndex));
    _companyEmail.removeAt(index.indexOf(newIndex));
    _index.removeAt(index.indexOf(newIndex));
    notifyListeners();
  }


}