import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}


class Application extends StatefulWidget {

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: [
          new Card(color: Colors.yellow,child:new Padding(padding: const EdgeInsets.all(200.0),)),
          new Card(color: Colors.red,child:new Padding(padding: const EdgeInsets.all(100.0),)),
          new Card(color: Colors.green,child:new Padding(padding: const EdgeInsets.all(50.0),)),
          new Card(color: Colors.blue,child:new Padding(padding: const EdgeInsets.all(30.0),)),
          new Card(color: Colors.brown,child:new Padding(padding: const EdgeInsets.all(10.0),)),
        ],
      )
    );
  }
}
