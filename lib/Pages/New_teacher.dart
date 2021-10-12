import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart';
import 'package:mobile_teacher_app/Pages/Enter_class.dart';
import 'package:mobile_teacher_app/Pages/Join_Class.dart';
import 'package:mobile_teacher_app/Pages/Create_Class.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class New_teacher extends StatelessWidget {
  static const String id = "New_teacher";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
              children: [
                SizedBox(height:50),
                Container(
                  width: SizeConfig.screenWidth,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                  child:Text('Welcome',
                      textAlign: TextAlign.center,
                      style: TextStyle(color:  Color(0xFF002255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold  )),

                ),

                SizedBox(height:30),
                InkWell(
                    onTap: (){
                     Navigator.pushNamed(context,CreateClass.id);
                    },
                    child:Container(
                        width: 280,
                        height: 60,
                        margin: EdgeInsets.fromLTRB(5, 10, 5,20),
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child:Text('Start a new class',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold  )),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                                color: Colors.greenAccent,
                                width: 2
                            ))
                    ),
                  ),

                SizedBox(height:40),
                InkWell(
                  onTap: (){
                     Navigator.pushNamed(context,Home.id);
                  },
                  child:Container(
                    width: 280,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(5, 10, 5,20),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child:Text('Use an existing class',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.yellow,
                            width: 2
                        ))
                ),
                ),
              ],
            )
        )
    );
  }
}
