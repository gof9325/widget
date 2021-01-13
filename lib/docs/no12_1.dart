import 'package:flutter/material.dart';

// 2021.01.13 (12) Flutter tutorial navigator & Data

class no12_1 extends StatefulWidget{

  String data;
  no12_1({@required this.data});

  @override
  State<StatefulWidget> createState() => _no12_1State();
}

class _no12_1State extends State<no12_1>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("navigator & Data"),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(widget.data.toString()),
              ),
              RaisedButton(
                child: Text("뒤로이동"),
                  onPressed: (){
                    Navigator.of(context).pop("Back Value");
                  }
              )
            ],
          ),
        ),
      );
  }

}