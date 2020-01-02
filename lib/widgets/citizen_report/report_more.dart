import 'dart:io';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReportMore extends StatelessWidget {
  int reportIndex;
  List<File> image;
  List<String> type;
  List<DateTime> date;
  List<String> details;
  List<String> time;
  List<String> location;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double spacing = 12.0;
    double division = 13;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(
            height: (height / division) * 5,
            width: width,
            child: RaisedButton(
              disabledColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.purple),
              ),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Image(
                    image: AssetImage("images/homepage_banner.png"),
                  )),
            ),
          ),
          Container(
            height: (height / division) * 1,
            width: width,
            margin: EdgeInsets.only(top: spacing),
            child: Text(""),
          ),
          Container(
            height: (height / division) * .5,
            width: width,
            margin: EdgeInsets.only(top: spacing),
          ),
          Container(
            height: (height / division) * .5,
            width: width,
            margin: EdgeInsets.only(top: spacing),
          ),
          Container(
            height: (height / division) * .5,
            width: width,
            margin: EdgeInsets.only(top: spacing),
          ),
          Container(
            height: (height / division) * 2.5,
            width: width,
            margin: EdgeInsets.only(top: spacing),
          ),
        ],
      ),
    );
  }
}
