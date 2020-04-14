import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExCustomScrollView extends StatelessWidget {
  ExCustomScrollView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'My List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(      
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: <Widget>[            
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              backgroundColor: Colors.indigo,
              // Provide a standard title.
              title:Text(                
                  title,style: TextStyle(fontSize:20),
              ),
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Image.asset('image/emo2.png'),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 200,
              ),
              // Next, create a SliverList
              SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(                           
                  title: Center(
                    child: Text('My List Item  Nº $index',
                    style: TextStyle(fontSize: 25),
                    ),
                   ),
                   //leading: Divider(thickness: 4,),     
                   subtitle: Divider(color: Colors.grey,thickness: 2),  
                  ),
                // Builds 20 ListTiles
                childCount: 20 ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
