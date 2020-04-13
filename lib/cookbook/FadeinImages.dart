import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ExFadeinImages extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(      
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Stack(
          children: <Widget>[
            Center(child: CircularProgressIndicator()),
            Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: 'https://picsum.photos/250?image=9',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
