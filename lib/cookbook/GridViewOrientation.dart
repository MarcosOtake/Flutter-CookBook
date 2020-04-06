import 'package:flutter/material.dart';


class GridViewOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Items';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,            
            // Generate 20 widgets that display their index in the List.
            children: List.generate(20, (index) {
              return Center(
                child: Text(
                  'Item  $index',
                  style: Theme.of(context).textTheme.headline4,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}