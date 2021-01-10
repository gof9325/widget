import 'package:flutter/material.dart';

void main() {
  runApp() => Scaffold(
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
    body: Container(
      color: Colors.red[200],
      child: Center(
        child: Text(
          "Body",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.menu),
          title: Text("Menu")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings)
        )
      ],
    ),
  );
}