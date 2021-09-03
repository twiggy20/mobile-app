import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class identity extends StatefulWidget {
  // const identity({Key? key}) : super(key: key);

  @override
  _identityState createState() => _identityState();
}

class _identityState extends State<identity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(child:
        Column(
            children:[
              Container(
                  width: 250,
                  height: 90,
                  margin: EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 20.0),
                  padding: EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 10.0),
                  child: Text('Who are you?',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF002255),
                          fontSize: 40,
                          fontWeight: FontWeight.bold  )),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: Colors.white,
                          width: 2
                      ))
              ),
              GestureDetector(
                onTap: () {
                  print("teacher clicked");
                },
                child:Container(
                    width: 240,
                    height: 80,
                    margin: EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 30.0),
                    padding: EdgeInsets.fromLTRB(20.0, 25.0, 10.0, 25.0),
                    child: Text('I am a teacher',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xFF002255),
                            fontSize: 30,
                            fontWeight: FontWeight.w500  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.grey[400],
                            width: 2
                        ))
                ),
              ) ,
              GestureDetector(
                onTap: () {
                  print("student clicked");
                },
                child:Container(
                    width: 240,
                    height: 80,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.fromLTRB(20.0, 25.0, 10.0, 25.0),
                    child: Text('I am a student',
                        textAlign: TextAlign.left,
                        style: TextStyle(color:Color(0xFF002255),
                            fontSize: 30,
                            fontWeight: FontWeight.w500  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.grey[400],
                            width: 2
                        ))
                ),
              )
            ]

        )

        )
    );
  }
}





