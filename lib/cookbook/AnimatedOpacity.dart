import 'package:flutter/material.dart';

class OpacityContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Transição de Opacidade';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
       home: ExempleOpacity(        
        title: appTitle
        ),
    );
  }
}

// The StatefulWidget's job is to take data and create a State class.
// In this case, the widget takes a title, and creates a _MyHomePageState.
class ExempleOpacity extends StatefulWidget {
  final String title;

  ExempleOpacity({Key key, this.title}) : super(key: key);

  @override
  _ExempleOpacityState createState() => _ExempleOpacityState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _ExempleOpacityState extends State<ExempleOpacity> {
  // Whether the green box should be visible
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          // The black box must be a child of the AnimatedOpacity widget.
          child: Container(
            child: Center(
              child: Text('Opacity = 1.0 ~ 0.0\n\nReverse = 0.0 ~ 1.0 \n'
                 '\n     Click in Button',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                ),)),
            width: 300.0,
            height: 300.0,
            color: Colors.deepPurple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {          
          setState(() {
              _visible = !_visible;
          });                 
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip_to_back),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}