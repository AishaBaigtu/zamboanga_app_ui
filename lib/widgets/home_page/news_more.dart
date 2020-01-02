import 'package:flutter/material.dart';

class NewsMore extends StatelessWidget {
  final int newsIndex;

  NewsMore({Key key, @required this.newsIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
    );
  }
}
