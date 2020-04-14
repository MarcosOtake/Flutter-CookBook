import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Container(
            padding: EdgeInsets.all(16),
            child: Image.asset('image/emo2.png',scale: 20,),
          )
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Container(
            child: Image.asset('image/emo2.png'),
          )
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}