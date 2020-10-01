import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  final String text;
  OtherPage(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text(text),),
      body: new Center(
        child: new Text(text),
      ),
    );
  }
}
