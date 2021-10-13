import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/SignIn.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/student_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
import 'package:nanoid/nanoid.dart';

class Note_ID extends StatefulWidget {
  static const String id = "Note_ID";

  //const join_class({Key? key}) : super(key: key);

  @override
  _Note_IDState createState() => _Note_IDState();
}

class _Note_IDState extends State<Note_ID> {

  final StudentService _studentService = locator<StudentService>();
  Student _student;

  @override
  Widget build(BuildContext context) {
    // print('SERVICE::::: ${_studentService.currentUser.firstName}');
    _student = _studentService.currentStudent;
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
            Column(children: [
            SizedBox(height: 70),
            Container(
              width: SizeConfig.screenWidth,
              height: 100,
              padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
              child: Text('Write down your ID now, you will need it later',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF002255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            ]),
        SizedBox(height: 30),
        Text(_student.code, style: TextStyle(backgroundColor: Colors.black54,
          color: Colors.white,
          fontSize: 30.0,
          letterSpacing: 8.0,)),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, StudentSignIn.id);
              },
              child: Container(
                  width: 250,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                  child: Text('Proceed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black, width: 2))),
            ),
            ])));
  }
}
