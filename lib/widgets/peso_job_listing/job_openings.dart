import 'package:flutter/material.dart';

class JobOpenings extends StatelessWidget {

  double spacing = 10.0;
  double radius = 10.0;
  static final buttoncolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Openings"),
        backgroundColor: Colors.purple,


      ),

    );
  }
}
