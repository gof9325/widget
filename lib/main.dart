import 'dart:developer';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'no8.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  return runApp(
    new MaterialApp(
      // home: MyApp(),
      home: MyMain(),
    )
  );
}

class MyMain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyMainState();

}

class _MyMainState extends State<MyMain>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, int index){
            return Container(
              child: Text("$index"),
            );
          }
        ),
      ),
    );
  }
}