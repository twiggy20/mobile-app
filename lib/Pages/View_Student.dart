import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';


class View_student extends StatelessWidget {
  static const String id = " View_student";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              SizedBox(height:50),
              Row(
                children: [
                  Expanded(
                    child:  Container(
                      width:SizeConfig.screenWidth ,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      //padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                      child: ImageIcon(
                          AssetImage("Assets/female_student.png")
                      ),
                    ),
                  ),
                  SizedBox(width:40),
                  Expanded(
                    child: Container(
                    width:SizeConfig.screenWidth ,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                    child:Text('Pupil A',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF002255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold  )),
                  ),
                  ),
                  SizedBox(width:40),
                  Expanded(
                 child: Container(
                    width:SizeConfig.screenWidth,
                    height: 50,
                    padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:Text('Edit',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Color(0xFF002255),
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),
                  ),
                  ),
                ],
              ),
              Container(
                width:320,
                height: 200,
                padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child:Text('see student work here',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF002255),
                        fontSize: 15,
                        fontWeight: FontWeight.normal)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border:
                        Border.all(color: Colors.grey)),
                  ),
              Column(
                children: [
                  Container(
                    width:320,
                    height: 30,
                    padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child:Text('Assessment History',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xFF002255),
                            fontSize: 15,
                            fontWeight: FontWeight.normal)),

                  ),Row(
                    children: [
                      Container(
                        width:50,
                        height: 30,
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                        margin:  EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ImageIcon(
                          AssetImage("Assets/Add_new.png"),
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            border:
                            Border.all(color: Colors.grey)),

                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child:Container(
                        width:SizeConfig.screenWidth ,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: ImageIcon(
                          AssetImage("Assets/Home_Icon.png"),
                          color: Colors.black,
                        ),
                      ),
                      ),
                      SizedBox(width: 40,),
                      Expanded(child:Container(
                        width:SizeConfig.screenWidth ,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: ImageIcon(
                          AssetImage("Assets/camera.png"),
                          color: Colors.black,
                        ),
                      ),
                      ),
                      SizedBox(width: 40,),
                      Expanded(child:Container(
                        width:SizeConfig.screenWidth ,
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                        child: ImageIcon(
                          AssetImage("Assets/Pencil_tools.png"),
                          color: Colors.black,
                        ),
                      ),
                      ),
                    ],
                  )

                ],
              )

            ]
        )
    );
  }
}
