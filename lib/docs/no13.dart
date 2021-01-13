import 'package:flutter/material.dart';

// 2021.01.13 (13) Flutter tutorial Custom AppBar & Silver AppBar : 커스텀 앱바

class no13 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _no13State();
}

class _no13State extends State<no13>{
  @override
  Widget build(BuildContext context) {

    //List
    //   return Scaffold(
    //     body: CustomScrollView(
    //       slivers: <Widget>[
    //         SliverAppBar(
    //           title: Text("CustomScroll & SliverScroll"),
    //         ),
    //         SliverList(
    //             delegate: SliverChildBuilderDelegate(
    //                 (context, int index) => Container(
    //                   margin: EdgeInsets.symmetric(
    //                     vertical: 20.0,
    //                     horizontal: 16.0
    //                   ),
    //                   child: Text("List item $index"),
    //                 ),
    //               childCount: 20
    //             )
    //         ),
    //       ],
    //     ),
    //   );

    // Grid
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("CustomScroll & SilverScroll"),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, int index) => Container(
                    child: Center(
                      child: Text("Item $index"),
                    ),
                  ),
                childCount: 20
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
              ),
          ),
        ],
      ),
    );
  }

}