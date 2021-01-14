import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  List<String> list = ["Scaffold", "Container"];
  int index;
  MyApp(this.index);

  @override
  State<StatefulWidget> createState() => _MyAppState(index);
}

class _MyAppState extends State<MyApp>{
  int index;
  _MyAppState(this.index);
  @override
  Widget build(BuildContext context) {
    if(index==1){ // 21.01.10 (1) Flutter tutorial Scaffold : 페이지
      return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: (){}),
            IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: (){}
            )
          ],
        ),
        drawer: Drawer(),
        body:
        Container(
        color: Colors.red[200],
        child: Center(
          child: Text(
            "Body",
            style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        )
      );
    } else if(index == 2) {

    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.favorite),
                onPressed: (){}
            ),

          ],
        ),
        drawer: Drawer(),
        body:


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
        // ***GoogleFonts 설정 어케 했는지 몰겠음..ㅠㅠ ..> 해결 공홈에서 Insalling을 보면 됨.
        //   child: Text(
        //     // $는 의미가 아닌 변수 또는 식을 넣을 수 있도록 해준다.
        //     "${(1+1).toString()} 텍스트 위젯",
        //     style: GoogleFonts.nanumGothic(
        //       color: Colors.red,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 20.0,
        //     )
        //   ),
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
        // Column(
        //   children: <Widget>[
        //     Text("C"),
        //     Text("o"),
        //     Text("l"),
        //     Text("u"),
        //     Text("m"),
        //     Row(
        //       children: <Widget>[
        //         Text("R"),
        //         Text("O"),
        //         Text("W"),
        //       ],
        //     )
        //   ],
        // ),

        // 2021.01.10 (6) Flutter tutorial ListView Builder Widget : 목록형 리스트뷰 레이아웃 위젯
        // 1. 기본으로 스크롤이 가능.
        // 2. 스크롤 위젯과 사용시
        // - 방향을 다르게 변경
        // - 일정 부분 지정
        // - 전체 크기를 계산하여 배치
        // Container(
        // ListView
        // child: ListView(
        //   padding: EdgeInsets.all(10.0),
        //   children: <Widget>[
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       child: Text("ListView1"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       child: Text("ListView2"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       child: Text("ListView2"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       child: Text("ListView3"),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10.0),
        //       child: Text("ListView4"),
        //     ),
        //   ],
        // ),

        // ListView.builder
        //   child: ListView.builder(
        //       padding: EdgeInsets.all(10.0),
        //       itemCount: 5,
        //       itemBuilder: (context, int index){
        //         // 화살표로 줄여서 표현 가능 { return Container();} > => Container()
        //         return Container(
        //           padding: EdgeInsets.all(10.0),
        //           child: Text("ListView${(index+1).toString()}"),
        //         );
        //       }
        //   ),
        // ),

        // 2021.01.10 (7) Flutter tutorial GridView Builder : 격자형 그리드뷰 레이아웃 위젯
        // SliverGridDelegateWithFixedCrossAxisCount 속성만 추가해주면 된다.
        // delegate : 대리자 / Axis : 중심선
        // Container(
        //GridView
        // child: GridView(
        //   padding: EdgeInsets.all(10.0),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     crossAxisSpacing: 10.0,
        //     mainAxisSpacing: 10.0,
        //   ),
        //   children: <Widget>[
        //     Container(
        //       color: Colors.grey[300],
        //       child: Center(
        //         child: Text("GridView1"),
        //       ),
        //     ),
        //     Container(
        //       color: Colors.grey[300],
        //       child: Center(
        //         child: Text("GridView2"),
        //       ),
        //     ),
        //     Container(
        //       color: Colors.grey[300],
        //       child: Center(
        //         child: Text("GridView3"),
        //       ),
        //     ),
        //   ],
        // ),

        // GridView.builder
        //   child: GridView.builder(
        //       padding: EdgeInsets.all(10.0),
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisSpacing: 10.0,
        //         mainAxisSpacing: 10.0,
        //         crossAxisCount: 2,
        //       ),
        //       itemCount: 6,
        //       itemBuilder: (context, int index){
        //         return Container(
        //           padding: EdgeInsets.all(10.0),
        //           color: Colors.grey[300],
        //           child: Center(
        //             child: Text("GridView${(index+1).toString()}"),
        //           ),
        //         );
        //       }
        //   ),
        // ),

        // 2021.01.11 (9) Fultter tutorial Widget SafeArea Notch : 자동으로 여백을 만들어 주는 위젯
        // Notch(노치)의 부분에 공간이 필요하지 않다면 방향에 false 기본값은 4방향 true
        SafeArea(
          child: Text("SafeArea Widget"),
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

}