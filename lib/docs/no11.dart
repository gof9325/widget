import 'package:flutter/material.dart';
import 'no10.dart';

// 2021.01.13 (11) Flutter tutorial navigator : 페이지 이동 및 뒤로 가기

class no11 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _no11State();
}

class _no11State extends State<no11>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Navigator"),
          centerTitle: true,
        ),
        body: Center(
          child: RaisedButton(
            child: Text("페이지 이동"),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => no10()
                )
              );
            },
          ),
        ),
      );
  }
  
}