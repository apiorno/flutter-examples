import 'package:flutter/material.dart';
import 'other_page.dart';

void main() {
  runApp(new MaterialApp(home: Application(),));
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Drawer'),),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: new Text('User Name'),
              accountEmail: new Text('User email'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26,child: new Text('U N') ,),
              decoration: new BoxDecoration(color: Colors.orange),
              otherAccountsPictures: [
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('U N 2')),
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('U N 3')),
              ],
            ),
            new ListTile(
              title: new Text('Page 1'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage('Page 1'))),),
            new ListTile(
              title: new Text('Page 2'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage('Page 2'))),),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {Navigator.pop(context);},),
          ],
        ),
      ),
    );
  }
}
