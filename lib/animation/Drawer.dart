import 'package:flutter/material.dart';

class ExempleDrawer extends StatelessWidget {
  final appTitle = 'Exemplo Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title)),
      body: Center(child: Text('Your Page!',style: TextStyle(fontSize: 30))),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text('Drawer Header',style: TextStyle(fontSize: 30))),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
           
            ListTile(
              title: Text('Item 1',style: TextStyle(fontSize: 30),),             
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             Divider(
              color: Colors.grey,
                thickness: 2.0,                
               ),
            ListTile(
              title: Text('Item 2',style: TextStyle(fontSize: 30)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             Divider(
              color: Colors.grey,
                thickness: 2.0,
               ),
             ListTile(
              title: Text('Item 3',style: TextStyle(fontSize: 30)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             Divider(
               color: Colors.grey,
                thickness: 2.0,
                ),
             ListTile(
              title: Text('Item 4',style: TextStyle(fontSize: 30)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             Divider(
               color: Colors.grey,
                thickness: 2.0,
                ),
          ],
        ),
      ),
    );
  }
}