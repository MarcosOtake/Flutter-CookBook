import 'package:flutter/material.dart';
import 'package:flutter_cookbook/cookbook/TodoInformation.dart';
//import 'package:flutter_cookbook/cookbook/TwoRoutePage.dart';
//import 'package:flutter_cookbook/cookbook/HeroApp.dart';
//import 'package:flutter_cookbook/cookbook/CustomScrollView.dart';
//import 'package:flutter_cookbook/cookbook/ListHorizontal.dart';
//import 'package:flutter_cookbook/cookbook/ListViewCreate.dart';
//import 'package:flutter_cookbook/cookbook/DismissibleWidget.dart';
//import 'package:flutter_cookbook/cookbook/HandleTaps.dart';
//import 'package:flutter_cookbook/cookbook/TextFieldFocus.dart';
//import 'package:flutter_cookbook/cookbook/TextEditingRetrieve.dart';
//import 'package:flutter_cookbook/FormValidation.dart';
//import 'package:flutter_cookbook/cookbook/TabBarWork.dart';
//import 'package:flutter_cookbook/cookbook/GridViewOrientation.dart';
//import 'package:flutter_cookbook/cookbook/Snackbar.dart';
//import 'package:flutter_cookbook/animation/PageRouteAnimation.dart';
//import 'package:flutter_cookbook/animation/PhysicsSimulation.dart';
//import 'package:flutter_cookbook/animation/AnimatedContainer.dart';
//import 'package:flutter_cookbook/animation/AnimatedOpacity.dart';
//import 'package:flutter_cookbook/animation/Drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Passing Data',
    home: TodosScreen(
      todos: List.generate( 20, (i) => Todo(
          'Description  $i',
          'Description $i',
        ),
      ),
    ),
  ));
}

