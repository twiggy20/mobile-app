import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Pages/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart' ;
import 'package:mobile_teacher_app/Pages/Identity.dart';
import 'package:mobile_teacher_app/Pages/Status.dart';
import 'package:mobile_teacher_app/Pages/Sign_In.dart';
import 'package:mobile_teacher_app/Pages/Sign_Up.dart';
import 'package:mobile_teacher_app/Pages/New_teacher.dart';
import 'package:mobile_teacher_app/Pages/Join_Class.dart';
import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;
import 'package:mobile_teacher_app/Pages/Create_Class.dart';
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';
import 'package:mobile_teacher_app/Pages/Response.dart';
import 'package:mobile_teacher_app/Services/Auth.dart';
import 'package:mobile_teacher_app/Pages/Wrapper.dart';
import 'package:mobile_teacher_app/models/User.dart';
import 'package:provider/provider.dart';



//import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;


void main()  =>runApp(MyApp());
class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute: identity.id,
     routes: {
       //'/': (context)=>classroom(),
        identity.id: (context) => identity(),
       status.id: (context) => status(),
        sign_in.id: (context)=>sign_in(),
       sign_up.id: (context)=>sign_up(),
       home.id: (context)=>home(),
       New_teacher.id: (context)=>New_teacher(),
       Join_class.id: (context)=>Join_class(),
      Enter_class.id : (context)=>Add_student(),
       classroom.id: (context)=>classroom(),
       create_class.id: (context)=>create_class(),
       Response.id: (context)=>Response(),
       classroom_lesson.id: (context)=>classroom_lesson()
     },

   );
  }
}

/* return StreamProvider<User>.value(
      value:AuthService().user,
      child:MaterialApp(
        home:Wrapper(),
    )
    );*/