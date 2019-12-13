import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/pages/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(HomePage());
  });
}






