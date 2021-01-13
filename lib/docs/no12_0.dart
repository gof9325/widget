import 'package:flutter/material.dart';
import 'no12_1.dart';

// 2021.01.13 (12) Flutter tutorial navigator & Data

class no12_0 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _no12_0State();
}

class _no12_0State extends State<no12_0>{
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
            children: [
              Container(
                child: Text("Data : Value"),
              ),
              RaisedButton(
                child: Text("페이지 이동"),
                onPressed: () async{
                  String backValue = await Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => no12_1(data: "Value")
                    )
                  );
                  print(backValue);
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (context) => no12_1(data:"Value")
                  //   )
                  // );
                  }
              ),
            ],
          ),
        ),
      );
  }

}