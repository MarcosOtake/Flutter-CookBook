import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ExDismissibleWidget extends StatefulWidget {
  ExDismissibleWidget({Key key}) : super(key: key);

  @override
  ExDismissibleWidgetState createState() {
    return ExDismissibleWidgetState();
  }
}

class ExDismissibleWidgetState extends State<ExDismissibleWidget> {
  final items = List<String>.generate(20, (i) => "Item Nº ${i + 1}");

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: ListView.builder(         
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(item),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  items.removeAt(index);
                });

                // Then show a snackbar.
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),            
              child: Card(  
                shape: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ),              
                child: ListTile(
                  contentPadding: EdgeInsets.all(8),
                  leading: Icon(
                    Icons.delete_forever,
                    color:Colors.red,
                    size: 35,
                    ),
                  trailing: Icon(Icons.delete_forever,
                    color:Colors.red,
                    size: 35,
                  ),
                  title: Center(
                    child: Text('$item',
                    style: TextStyle(
                      fontSize:30),),
                  )
                    )
                    ),
            );
          },
        ),
      ),
    );
  }
}