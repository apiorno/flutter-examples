import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application(),));
}


class Application extends StatefulWidget {

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> with SingleTickerProviderStateMixin{
String mText = '';
TabController tController;

@override
void initState(){
  tController = new TabController(length: 3, vsync: this);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('Appbar text'),
        leading: new Icon(Icons.menu),
        actions: [
          new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: null),
          new IconButton(icon: new Icon(Icons.close), onPressed: null),
        ],
        bottom: new TabBar(
            controller: tController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.supervisor_account),),
              new Tab(icon: new Icon(Icons.close),),
        ]),
      centerTitle: true,
      toolbarOpacity: 0.5,),
      body: new TabBarView(
          controller: tController,
          children: <Widget>[
            new Center(child: new Text("Welcome to House"),),
            new Center(child: new Text("Welcome to Acc"),),
            new Center(child: new Text("Welcome to X"),),
          ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child:  new TabBar(
            controller: tController,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.supervisor_account),),
              new Tab(icon: new Icon(Icons.close),),
            ]), 
      ),
    );
  }
}
