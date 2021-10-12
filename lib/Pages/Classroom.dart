import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:mobile_teacher_app/Pages/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/Pages/View_Student.dart';
import 'Lesson/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/Pages/student/Student_List.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/app_class.dart';
import 'package:mobile_teacher_app/services/class_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class ClassRoom extends StatefulWidget {
  static const String id = "classroom ";

  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {

  AppClass _classId;
  final ClassService _classService = ClassService();

  final _tabs = <Widget>[
    Tab(text: 'Students'),
    Tab(text: 'Lessons'),
  ];

  @override
  Widget build(BuildContext context) {
    _classId = ModalRoute
        .of(context)
        .settings
        .arguments as AppClass;

    print('CLASS ${_classId.name}');
    return DefaultTabController(length: _tabs.length, child: Scaffold(
      appBar: AppBar(
          title: Text(_classId.name.toUpperCase() ?? 'N/A',
              style: TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          centerTitle: true,
          // backgroundColor: Colors.transparent,
          elevation: 1.0,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.amberAccent,
            indicatorWeight: 5.0,
            tabs: _tabs,
            labelStyle: TextStyle(),
          )
      ),
      body: SafeArea(
        child: TabBarView(children: <Widget>[
          StudentList(courseId: _classId.id),
          ClassRoomLesson(courseId: _classId.id)
        ],),
      ),
    ));
  }}
   /* return Scaffold(
        appBar: AppBar(
          title: Text(_classId.name ?? 'N/A',
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
                      child:Text('Pupils',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.yellow,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ),
                  ),

                  SizedBox(width: 4,),
                 /*  InkWell(

                  SizedBox(width: 7,),
                 */ InkWell(

                  onTap: (){
                  Navigator.pushNamed(context, classroom.id);
                  },*//*
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
                  SizedBox(width: 4,),
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
                         Container(
                          width: 50,
                          height: 40,
                           margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                           child:  ImageIcon(
                       AssetImage("Assets/female_student.png"),
                        ),
                         ),
                    //  SizedBox(width: 10,),
                        GestureDetector(
                        onTap: () {
                          print('new student clicked');
                        Navigator.pushNamed(context, View_student.id);
                        },
                      child: Container(
                          width: 80,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border:
                              Border.all(color: Colors.grey)),
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                  child: ImageIcon(
                                    AssetImage("Assets/Add_new.png"),
                                    color: Colors.black,
                                  ),
                                ),
                                Text('Add new\n pupil ',
                                    //textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize:10,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Roboto",
                                    )),
                              ],
                            ),
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

    );*/


