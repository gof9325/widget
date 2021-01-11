import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class no10 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _no10State();
}

class _no10State extends State<no10>{
  List<bool> isSelected = [false, false, true];
  @override
  Widget build(BuildContext context) {
    // 2021.01.11 (10) Flutter tutorial Button's Widget
      return Scaffold(
        appBar: AppBar(
          title: Text("Button's"),
          centerTitle: true,
        ),
        body:
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  RaisedButton(
                      child: Text("RaisedButton"),
                      onPressed: (){}
                  ),
                  BackButton(),
                  CloseButton(),
                  FloatingActionButton(
                      child: Icon(Icons.check),
                      onPressed: (){}
                  ),
                  OutlineButton(
                      child: Text("OutlineButton"),
                      onPressed: (){}
                  ),
                  RawMaterialButton(
                      child: Text("RawMaterialButton"),
                      onPressed: (){}
                  ),
                  ToggleButtons(
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Icon(Icons.call),
                      Icon(Icons.cake)
                    ],
                    onPressed: (int index){
                      setState(() {
                        for (int buttonIndex=0;
                        buttonIndex < isSelected.length;
                        buttonIndex++)
                        {
                          if(buttonIndex == index){
                            isSelected[buttonIndex] = true;
                          } else {
                            isSelected[buttonIndex] = false;
                          }
                        }
                      });
                    },
                    isSelected: isSelected,
                  ),
                  CupertinoButton(
                      child: Text("CupertinoButton"),
                      onPressed: (){}
                  ),
                  PopupMenuButton(
                      child: Text("POP"),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("PopupMenuItem1"),
                          value: "PopupMenuItem",
                        ),
                        PopupMenuItem(
                          child: Text("PopupMenuItem2"),
                          value: "PopupMenuItem",
                        )
                      ]
                  ),
                  DropdownButton(
                      hint: Text("DropdownButton"),
                      items: [
                        DropdownMenuItem(
                            value: 1,
                            child: Text("1")
                        )
                      ],
                      onChanged: (int value){}
                  ),
                  MaterialButton(
                    child: Text("MaterialButton"),
                    onPressed: (){},
                  ),
                  InkWell(
                    child: Text("InkWell"),
                    onTap: (){},
                  ),
                  GestureDetector(
                    child: Text("GestureDetector"),
                    onTap: (){},
                  ),
                  FlatButton(
                      onPressed: (){},
                      child: Text("FlatButton")
                  ),
                  IconButton(
                      icon: Icon(Icons.check_circle),
                      onPressed: (){})
                ],
              ),
            )
      );
  }

}