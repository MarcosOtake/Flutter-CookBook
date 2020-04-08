import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            centerTitle: true,
            title: Text('Example TabBar'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car,size: 80),
              Icon(Icons.directions_transit,size: 80),
              Icon(Icons.directions_bike,size: 80),
            ],
          ),
        ),
      ),
    );
  }
}