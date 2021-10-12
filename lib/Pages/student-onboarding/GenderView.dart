import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/student_service.dart';
import '../../locator.dart';
import 'Status.dart';
import 'Registered.dart';

//import 'package:mobile_app/Pages/Sign_In_2.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
// import 'package:mobile_app/Pages/Home.dart';

// import '../Reg_FName.dart';

class GenderView extends StatefulWidget {
  static const String id = "Reg_gender";

  @override
  _GenderViewState createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  final StudentService _studentService = locator<StudentService>();
  bool male = false;
  bool female = false;
  Student _student;
  String gender;

  @override
  Widget build(BuildContext context) {
    _student = ModalRoute.of(context).settings.arguments as Student;

    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2)),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2)),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2)),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2)),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth,
              height: 4,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 2)),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 70,
      ),
      Column(
        children: [
          Text('Are you male or female?',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.indigo.shade900,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          Container(
              width: 270,
              height: 60,
              margin: EdgeInsets.fromLTRB(0, 60, 5, 40),
              padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 2)),
              child: Center(
                  child: Row(
                children: [
                  Container(
                    width: 61,
                    height: 61,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.greenAccent,
                        value: this.male,
                        onChanged: (bool value) {
                          setState(() {
                            this.male = value;
                            this.female = false;
                            gender = 'MALE';
                          });
                        },
                      ),
                    ),
                  ),
                  Text('I am a male',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF002255),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      )),
                  Image.asset(
                    "assets/icons/Male_asset.png",
                    width: 28.86,
                    height: 37,
                    fit: BoxFit.contain,
                  ),
                ],
              ))),
          Container(
              width: 270,
              height: 60,
              margin: EdgeInsets.fromLTRB(0, 0, 5, 10),
              padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey, width: 2)),
              child: Center(
                  child: Row(
                children: [
                  Container(
                    width: 61,
                    height: 61,
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.greenAccent,
                        value: this.female,
                        onChanged: (bool value) {
                          setState(() {
                            this.female = value;
                            this.male = false;
                            gender = 'FEMALE';
                          });
                        },
                      ),
                    ),
                  ),
                  Text('I am a female',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF002255),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                      )),
                  Image.asset(
                    "assets/icons/Female_asset.png",
                    width: 28.86,
                    height: 37,
                    fit: BoxFit.contain,
                  ),
                ],
              ))),
          SizedBox(width: 50),
          InkWell(
            onTap: () async {
              _student.gender = gender;
              dynamic result = await _studentService.addStudent(_student);
              if (result != null) {
                Navigator.pushNamedAndRemoveUntil(context, Registered.id,
                    (_) => false);
              }
            },
            child: Container(
                width: 250,
                height: 50,
                margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                child: Text('Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal)),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)),
                    border: Border.all(color: Colors.black, width: 2))),
          )
        ],
      )
    ])));
  }
}
