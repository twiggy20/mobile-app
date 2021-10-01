import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Sign_In.dart';
import 'package:mobile_teacher_app/Pages/Sign_Up.dart';
class status extends StatefulWidget {
  static const String id = "status";
  @override
  _statusState createState() => _statusState();
}
class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    //return either home or sign up
    return Scaffold(
        body: SafeArea(child:
        Column(
            children:[
              Container(
                  width: 320,
                  height: 100,
                  margin: EdgeInsets.fromLTRB(5.0, 20.0, 10.0, 20.0),
                  padding: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 10.0),
                  child: Text('Do you have an account with us?',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF002255),
                          fontSize: 40,
                          fontWeight: FontWeight.bold  )),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      border: Border.all(
                          color: Colors.white,
                          width: 2
                      ))
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, sign_in.id);
                },
                child:Container(
                    width: 200,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 15.0),
                    padding: EdgeInsets.fromLTRB(0, 5.0, 10.0, 5.0),
                    child: Text('Yes',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Color(0xFF3EC8AF),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                          bottomRight:  Radius.circular(30.0), ),

                        border: Border.all(
                            color: Color(0xFF3EC8AF),
                            width: 2
                        ))
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, sign_up.id);
                },
                child:Container(
                    width: 200,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 50.0),
                    padding: EdgeInsets.fromLTRB(0, 5.0, 10.0, 5.0),
                    child: Text('No',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Color(0xFFC8C23E),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                          bottomRight:  Radius.circular(30.0), ),

                        border: Border.all(
                            color: Color(0xFFC8C23E),
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
