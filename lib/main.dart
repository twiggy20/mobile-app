import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Lesson_Form.dart';
import 'package:mobile_teacher_app/Pages/StudentHome.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/AgeView.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/ClassView.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/FirstNameView.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/GenderView.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/Note_ID.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/Registered.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/SignIn.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/Status.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/SurnameView.dart';
import 'package:mobile_teacher_app/dialog_manager.dart';
import 'package:mobile_teacher_app/services/dialog_service.dart';
import 'Pages/Lesson/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart';
import 'Pages/Options.dart';
import 'Pages/Authenticate/Identity.dart';
import 'Pages/Authenticate/Status.dart';
import 'Pages/Authenticate/Sign_In.dart';
import 'Pages/Authenticate/Sign_Up.dart';
import 'package:mobile_teacher_app/Pages/New_teacher.dart';
import 'package:mobile_teacher_app/Pages/Join_Class.dart';
import 'package:mobile_teacher_app/Pages/Add_Student.dart';
import 'Pages/Class/Create_Class.dart';
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';
import 'package:mobile_teacher_app/Pages/Response.dart';
import 'package:mobile_teacher_app/Pages/View_student.dart';
import 'package:mobile_teacher_app/Services/auth_service.dart';
import 'package:mobile_teacher_app/Pages/Wrapper.dart';
import 'package:mobile_teacher_app/models/User.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

//import 'package:mobile_teacher_app/Pages/Add_Student.dart' ;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: identity.id,
      builder: (context, child) => Navigator(
        key: locator<DialogService>().dialogNavigationKey,
        onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => DialogManager(child: child)),
      ),
      onGenerateRoute: (settings) {
        print('ROUTING!!!');
      },
      routes: {
        //'/': (context)=>classroom(),
        identity.id: (context) => identity(),
        status.id: (context) => status(),
        StudentStatus.id: (context) => StudentStatus(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        Home.id: (context) => Home(),
        New_teacher.id: (context) => New_teacher(),
        Join_class.id: (context) => Join_class(),
        Enter_class.id: (context) => Add_student(),
        ClassRoom.id: (context) => ClassRoom(),
        CreateClass.id: (context) => CreateClass(),
        Response.id: (context) => Response(),
       // classroom_lesson.id: (context) => classroom_lesson(),
        Options.id: (context) => Options(),
        View_student.id: (context) => View_student(),

        ClassRoomLesson.id: (context) => ClassRoomLesson(),
        LessonForm.id: (context) => LessonForm(),

        StudentSignIn.id: (context) => StudentSignIn(),
        StudentHome.id: (context) => StudentHome(),

        FirstNameView.id: (context) => FirstNameView(),
        SurnameView.id: (context) => SurnameView(),
        AgeView.id: (context) => AgeView(),
        ClassView.id: (context) => ClassView(),
        GenderView.id: (context) => GenderView(),
        Registered.id: (context) => Registered(),
        Note_ID.id: (context) => Note_ID(),

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
