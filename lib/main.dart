import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widget/no1234567.dart';
import 'package:widget/docs/no10.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  return runApp(
    new MaterialApp(
      home: no10(),
      // home: MyMain(),
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
              //(context, int index) => GestureDetector(
            // onTap: (){
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //           builder: (BuildContext context) => new MyApp(index),
            //       )
            //     );
            //   },
            // )
        ),
      ),
    );
  }
}