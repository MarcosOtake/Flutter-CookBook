import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http.get('https://viacep.com.br/ws/01311-000/json/unicode/');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf; 


  Album({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf
    });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
    );
  }
}



class DataFromInternet extends StatefulWidget {
  DataFromInternet({Key key}) : super(key: key); 

  @override
  _DataFromInternetState createState() => _DataFromInternetState();
}

class _DataFromInternetState extends State<DataFromInternet> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Fetch Data VIA CEP'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[                     
                      Text('CEP: ' + snapshot.data.cep,style: TextStyle(fontSize: 40)),
                      Text('LOGRADOURO: ' +snapshot.data.logradouro,style: TextStyle(fontSize: 20)),
                      Text('COMPLEMENTO: ' +snapshot.data.complemento,style: TextStyle(fontSize: 20)),
                      Text('BAIRRO: ' +snapshot.data.bairro,style: TextStyle(fontSize: 20)),
                      Text('LOCALIDADE: ' +snapshot.data.localidade,style: TextStyle(fontSize: 20)),
                      Text('UF: ' +snapshot.data.uf,style: TextStyle(fontSize: 20)),                     
                  ],
                );
                
                //Center(child: Text(snapshot.data.bairro,style: TextStyle(fontSize: 30)));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
