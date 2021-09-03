import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Pages/Identity.dart';
import 'package:mobile_teacher_app/Pages/Status.dart';
import 'package:mobile_teacher_app/Pages/Sign_In.dart';
import 'package:mobile_teacher_app/Pages/Sign_Up.dart';
import 'package:mobile_teacher_app/Pages/Home.dart' ;
import 'package:mobile_teacher_app/Pages/Join_Class.dart';
import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;
import 'package:mobile_teacher_app/Pages/Create_Class.dart';
//import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;
void main()  =>runApp(MaterialApp(
  initialRoute:'home',
  routes: {
    //'/': (context)=>classroom(),
  //  '/': (context)=>identity(),
 //  '/': (context)=>status(),
    '/': (context)=>sign_in(),
    //'/': (context)=>sign_up()
   // '/': (context)=>home()
//    '/': (context)=>Join_class(),
   // '/': (context)=>Add_student()
  //  '/': (context)=>create_class()
  },

));

