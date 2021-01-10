import 'dart:developer';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:https://pub.dev/packages/google_fonts';
//import 'package:widget/fonts/';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GestureBinding.instance.resamplingEnabled = true;
  return runApp(
    new MaterialApp(
      home: MyApp(),
    )
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 21.01.10 (1) Flutter tutorial Scaffold : 페이지
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite),
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: (){}
          )
        ],
      ),
      drawer: Drawer(),
      body:
    // Container(
        // color: Colors.red[200],
        // child: Center(
        //   child: Text(
        //     "Body",
        //     style: TextStyle(
        //         color: Colors.white
        //     ),
        //   ),
        // ),

        // 2021.01.10 (2) Flutter tutorial Widget Container 컨테이너 위젯 : 디자인 박스
        // 주의 : Container의 자체 color속성과 decoration을 같이 사용할 수 없다. BoxDecoration안의 color값으로 지정하여 사용하자.
      //   width: 100.0,
      //   height: 100.0,
      //   margin: EdgeInsets.all(10.0),
      //   padding: EdgeInsets.symmetric(
      //     vertical: 10.0,
      //     horizontal: 20.0,
      //   ),
      //   alignment: Alignment.center,
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     image: DecorationImage(
      //       image: NetworkImage("")
      //     ),
      //     border: Border.all(
      //       color: Colors.red,
      //       width: 2.0,
      //     ),
      //     borderRadius: BorderRadius.circular(50),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black,
      //         offset: Offset(0.5,0.5)
      //       ),
      //       BoxShadow(
      //         color: Colors.black,
      //         offset: Offset(0.5,0.5)
      //       ),
      //     ]
      //   ),
      //   //child: Widget,
      // ),

        // 2021.01.10 (3) Flutter tutorial Widget Text : 텍스트 위젯
        // ***GoogleFonts 설정 어케 했는지 몰겠음..ㅠㅠ
        // child: Text(
        //   // $는 의미가 아닌 변수 또는 식을 넣을 수 있도록 해준다.
        //   "${(1+1).toString()} 텍스트 위젯",
        //   style: GoogleFonts.nanumGothic(
        //     color: Colors.red,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 20.0,
        //   )
        // ),
      // ),

      // 2021.01.10 (4) Flutter tutorial Widget SingleChildScrollView : 스크롤 기능 위젯
      // 1. child Widget(자식 위젯)의 크기가 화면보다 길거나 상위 위젯보다 길 때 사용 됨
      // 2. 다른 방향의 측을 사용하는 것을 추천
      // SingleChildScrollView(
      //   child: Container(
      //     child: Column(
      //       children: <Widget>[
      //         Container(
      //           child: Text("스크롤 시작"),
      //         ),
      //         Container(
      //           color: Colors.red,
      //           height: 1000.0,
      //         ),
      //         Container(
      //           child: Text("스크롤 끝"),
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      // 2021.01.10 (5) Flutter tutorial Column & Row Widget : 가로세로 배치하는 위젯
      Column(
        children: <Widget>[
          Text("C"),
          Text("o"),
          Text("l"),
          Text("u"),
          Text("m"),
          Row(
            children: <Widget>[
              Text("R"),
              Text("O"),
              Text("W"),
            ],
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "menu",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
            label: "menu2",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: "menu3",
          )
        ],
      ),
    );
  }

}