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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[              
                Icon(Icons.directions_car,size: 80, color: Colors.indigo,),
                Text("Car Page",style: TextStyle(
                  fontSize: 40,
                  color: Colors.indigo,
                  fontStyle: FontStyle.italic
                  ),
                  ),
              ],
              ), 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[              
                Icon(Icons.directions_transit,size: 80,color: Colors.red,),
                Text("Subway Page",style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontStyle: FontStyle.italic
                  ),
                  ),
              ],
              ), 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[              
               Icon(Icons.directions_bike,size: 80,color: Colors.green,),
               Text("Bicycle Page",style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  fontStyle: FontStyle.italic
                  ),
                  ),
                ],
              ), 
            ],
          ),
        ),
      ),
    );
  }
}