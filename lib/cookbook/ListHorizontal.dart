import 'package:flutter/material.dart';

class ListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Column(
           children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "BLACK",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.black,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "BLACK 12",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.black12,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "BLACK 26",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.black26,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "BLACK 38",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.black38,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "BLACK 54",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          Divider(thickness: 5,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "RED",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.red,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "BLUE",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "ORANGE",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.orange,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "GREEN",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.green
                ),
                Container(
                  child: Center(
                    child: Text(
                      "PINK",style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        ),
                        )
                        ),
                  width: 160.0,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
         ],
        ),
      ),
    );
  }
}