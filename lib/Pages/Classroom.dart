import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class classroom extends StatefulWidget {
  static const String id = "classroom ";

  @override
  _classroomState createState() => _classroomState();
}

class _classroomState extends State<classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Class Name',
              style: TextStyle(color: Color(0xFF002255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Column(

            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 25,
                      //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child:Text('Student',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.yellow,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ),
                  ),
                  SizedBox(width: 7,),
                 /*  InkWell(
                  onTap: (){
                  Navigator.pushNamed(context, classroom.id);
                  },*/
                  Expanded(
                   child: InkWell(
                    onTap: (){
                    Navigator.pushNamed(context, classroom_lesson.id);
                    },
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 25,
                      child:Text('Lesson',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ),
                  ),
                   ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(
                              color:Colors.yellow

                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 7,),
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(
                              color:Colors.grey

                          )
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 4,
                          child: Center(
                           // child: Image.asset("assets/Female.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]
        )
//a button should be here

    );
  }
}
