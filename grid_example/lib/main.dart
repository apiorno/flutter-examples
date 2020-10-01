import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application(),));
}


class Application extends StatefulWidget {

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {

  List<int> items = new List();

  @override
  // ignore: must_call_super
  void initState() {
    for(int i=0; i<50;i++){
      items.add(i);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new GridView.builder(itemCount:items.length ,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context,int index){
          return new Card(color: Colors.blue,child: new Padding(padding: const EdgeInsets.all(20.0)),);
          }),
    );
  }
}
