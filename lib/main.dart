import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Pages/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart';
import 'Pages/Options.dart';
import 'Pages/Authenticate/Identity.dart';
import 'Pages/Authenticate/Status.dart';
import 'Pages/Authenticate/Sign_In.dart';
import 'Pages/Authenticate/Sign_Up.dart';
import 'package:mobile_teacher_app/Pages/New_teacher.dart';
import 'package:mobile_teacher_app/Pages/Join_Class.dart';
import 'package:mobile_teacher_app/Pages/Add_Student.dart';
import 'package:mobile_teacher_app/Pages/Create_Class.dart';
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';
import 'package:mobile_teacher_app/Pages/Response.dart';
import 'package:mobile_teacher_app/Services/auth_service.dart';
import 'package:mobile_teacher_app/Pages/Wrapper.dart';
import 'package:mobile_teacher_app/models/User.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

//import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      initialRoute: identity.id,
      routes: {
        //'/': (context)=>classroom(),
        identity.id: (context) => identity(),
        status.id: (context) => status(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        Home.id: (context) => Home(),
        New_teacher.id: (context) => New_teacher(),
        Join_class.id: (context) => Join_class(),
        Enter_class.id: (context) => Add_student(),
        classroom.id: (context) => classroom(),
        CreateClass.id: (context) => CreateClass(),
        Response.id: (context) => Response(),
        classroom_lesson.id: (context) => classroom_lesson(),
        Options.id: (context) => Options(),
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
