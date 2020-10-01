import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}
class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  SimpleDialog sb;
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  void showSimpleDialog () {
    sb = new SimpleDialog(
      title:  new Text('Choose from:'),
      children: [
        new SimpleDialogOption(
          child: new Text('Yes'),
          onPressed: (){print('Yes');},
        ),
        new SimpleDialogOption(
          child: new Text('No'),
          onPressed: (){print('No');},
        ),
        new SimpleDialogOption(
          child: new Text('Close'),
          onPressed: (){Navigator.pop(context);},
        )
      ],
    );
    showDialog(context: context, child: sb);
  }
  void showSnackbar (){
    _key.currentState.showSnackBar(new SnackBar(content: new Text('Activated Snackbar')));
  }
  void showAlert (){
   showDialog(
       context: context,
       child: new AlertDialog(
         title: new Text('Warning!') ,
         content: new Text('Warning happened!!'),
         actions: [
           new IconButton(icon: new Icon(Icons.close), onPressed: (){Navigator.pop(context);})
         ],
       ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _key,
      body: new ListView(
        children: [
          new Center(
            child: new RaisedButton(
              onPressed: (){showSnackbar();},
              child: new Text('Activate SnackBar'),),),
          new Center(
            child: new RaisedButton(
              onPressed: (){showAlert();},
              child: new Text('Activate AlertDialog'),),),
          new Center(
            child: new RaisedButton(
              onPressed: (){showSimpleDialog();},
              child: new Text('Activate Simple Dialog'),),),
        ],
      ),
    );
  }
}
