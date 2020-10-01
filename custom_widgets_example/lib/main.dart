import 'package:flutter/material.dart';
import 'custom_widget.dart';

void main() {
  runApp(new Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom widgets',
      home: new Scaffold(
        body: new CustomWidget(),
      ),
    );
  }
}



