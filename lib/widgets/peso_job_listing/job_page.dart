import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {

  int jobIndex;

  JobPage({Key key, @required this.jobIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.bookmark),)
        ],
        ),
    );
  }
}
