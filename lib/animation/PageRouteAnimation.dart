import 'package:flutter/material.dart';

class PageRouteAnimation extends StatefulWidget {
  @override
  _PageRouteAnimationState createState() => _PageRouteAnimationState();
}

class _PageRouteAnimationState extends State<PageRouteAnimation> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('Clique aqui!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class Page2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pagina 2"),
      ),
      body: Center(      
        child: Text('(Pagina 2) - viu como é facil !!!',
        style: TextStyle(
          fontSize: 20
          
          ),),
      ),
    );
  }
}

 //                                                                                    //     
 //Outhers Informations https://flutter.dev/docs/cookbook/animation/page-route-animation
 //                                                                                    // 