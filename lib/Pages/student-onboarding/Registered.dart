import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/Note_ID.dart';
import 'package:mobile_teacher_app/models/Student.dart';

class Registered extends StatefulWidget {
  static const String id = "register";

  @override
  _RegisteredState createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    child:
                    Text(
                        'Hurray!\n\nYou are now\nregistered!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFC8C23E),
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                    ),

                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, Note_ID.id );
                  },
                  child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                      child:Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0)),
                          border: Border.all(
                              color: Colors.black,
                              width: 2
                          )
                      )
                  ),
                )
              ],
      ),
      )
    );
  }
}
