import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map,size: 30),
              title: Text('Map',style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.photo_album,size: 30),
              title: Text('Album',style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.phone,size: 30),
              title: Text('Phone',style: TextStyle(fontSize: 20),),
            ),
             Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.mail,size: 30),
              title: Text('Mail',style: TextStyle(fontSize: 20),),
            ),
             Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.settings,size: 30),
              title: Text('Settings',style: TextStyle(fontSize: 20),),
            ),
            Divider(thickness: 2),
          ],
        ),
      ),
    );
  }
}