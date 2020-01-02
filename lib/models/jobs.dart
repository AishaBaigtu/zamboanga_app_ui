
import 'package:flutter/material.dart';


class Jobs extends ChangeNotifier {
  List<String> _jobTitle = ["Job Title 1","Job Title 2","Job Title 3","Job Title 4"];
  List<String> _companyName = ["Company 1", "Company 2", "Company 3", "Company 4"];
  List<String> _companyAddress = ["Address 1", "Address 2", "Address 3", "Address 4"];
  List<String> _companyDetails = ["Details 1", "Details 2", "Details 3", "Details 4"];
  List<String> _companyWebsite = ["Website 1", "Website 2", "Website 3", "Website 4"];
  List<String> _companyEmail = ["Email 1", "Email 2", "Email 3", "Email 4"];


  List<String> get jobTitle => _jobTitle;
  List<String> get companyName => _companyName;
  List<String> get companyAddress => _companyAddress;
  List<String> get companyDetails => _companyDetails;
  List<String> get companyWebsite => _companyWebsite;
  List<String> get companyEmail => _companyEmail;

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
}
