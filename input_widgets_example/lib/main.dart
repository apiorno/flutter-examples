import 'package:flutter/material.dart';

void main() {
  runApp(new Application());
}

class Application extends StatefulWidget {
  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {

  String text ='';
  bool isChecked = false;
  int groupVal = 1;
  String radioText ='number 1 selected';
  double slideVal = 0;
  String slideText = "level is 0";

  void changeText(String txt){
    setState(() {
      text = txt;
    });
  }
  void changeTextForCheckbox(bool b){
    setState(() {
      isChecked = b;
      if (isChecked) {
        text = 'CheckBox checked & Switch off';
      }
      else {
        text = 'CheckBox unChecked & Switch on';
      }
    });
  }

  void changeTextForRadio(int value){
    setState(() {
      groupVal = value;
      radioText = "number $groupVal selected";
    });
  }
  void changeTextValSlider(double value){
    setState(() {
      slideVal = value;
      slideText = "level is $slideVal";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inputs',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Inputs'),
        ),
        body: new Column(
          children: [
            new TextField(
              onChanged: (String txt){
                changeText(txt);
              },
              decoration: new InputDecoration(hintText: 'Type something',labelText: 'Full name'),
            ),
            new Text(text),
            new RaisedButton(onPressed: (){changeText('Pressed Raised Button');},child: new Text('Raised button'),),
            new FlatButton(onPressed: (){changeText('Pressed Flat Button');},child: new Text('Flat button'),),
            new Checkbox(value: isChecked, onChanged: (bool b){
              changeTextForCheckbox(b);
            }),
            new Switch(value: !isChecked, onChanged: (bool b){
              changeTextForCheckbox(!b);
            }),
            new Radio(value: 1, groupValue: groupVal, onChanged: (val){changeTextForRadio(val);}),
            new Radio(value: 2, groupValue: groupVal, onChanged: (val){changeTextForRadio(val);}),
            new Radio(value: 3, groupValue: groupVal, onChanged: (val){changeTextForRadio(val);}),
            new Text(radioText),
            new Slider(value: slideVal, onChanged: (val){changeTextValSlider(val);}, min: 0,max: 100,),
            new Text(slideText),
          ],
        ),
      ),
    );
  }
}
