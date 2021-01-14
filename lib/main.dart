import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:widget/docs/no1234567.dart';
import 'package:widget/docs/no8.dart';
import 'package:widget/docs/no10.dart';
import 'package:widget/docs/no11.dart';
import 'package:widget/docs/no12_0.dart';
import 'package:widget/docs/no12_1.dart';
import 'package:widget/docs/no13.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  return runApp(
    new MaterialApp(
      // home: no13(),
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
        height: 300.0,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, int index){
            return Container(
              padding: EdgeInsets.all(10.0),
              child: Text("ListView${(index+1).toString()}"),
            );
          }

        ),
      ),
    );
  }
}

// 2021.01.14 (14) Flutter tutorial http connection FutureBuilder Widget : 인터넷 서버 연결
// **서버 정상 작동이 안되서 질문 중
Future fetch() async{
  String url = "https://192.168.0.255/list";
  var res = await http.get(url);
  return json.decode(res.body);
}