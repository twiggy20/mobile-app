import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/StudentHome.dart';

// import 'package:mobile_app/Pages/Home.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/student_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

import '../../locator.dart';

// ignore: camel_case_types
class StudentSignIn extends StatefulWidget {
  //const sign_in({Key? key}) : super(key: key);
  static const String id = "StudentSignIn2";

  @override
  _StudentSignInState createState() => _StudentSignInState();
}

// ignore: camel_case_types
class _StudentSignInState extends State<StudentSignIn> {
  final StudentService _studentService = locator<StudentService>();
  TextEditingController _userIdController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: 70,
              margin: EdgeInsets.fromLTRB(0, 40, 10, 10),
              padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
              child: Text('Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF002255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 60),
            SingleChildScrollView(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, StudentHome.id);
                },
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 280),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Touch here to input your  ID',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      fillColor: Colors.grey[100],
                      // filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                    ),
                    controller: _userIdController,
                  ),
                ),
              ),
            ),
            /*SizedBox(height: 80),
            InkWell(
              onTap: () async {
                Student student =
                    await _studentService.getStudent(_userIdController.text);
                if (student != null) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, StudentHome.id, (_) => false);
                }
              },
              child: Container(
                  width: 250,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                  padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                  child: Text('Sign in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: Colors.black, width: 2))),
            ),*/
            Padding(padding: EdgeInsets.all(24.0), child: Container(
              child: SizedBox(
                width: double.infinity/2,
                height: MediaQuery.of(context).size.height * 0.06,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      side: BorderSide(color: Colors.yellow, width: 2),
                    ),
                    color: Colors.yellow,
                    child: loading ? SizedBox(
                      child: CircularProgressIndicator(
                        valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.black12),
                      ),
                      height: 22.0,
                      width: 22.0,
                    ) : Text('Sign in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                    onPressed: () async {
                      // dynamic result = await _auth.AnonSignin();
                      setState(() {
                        loading = true;
                      });
                      Student student =
                      await _studentService.getStudent(_userIdController.text);
                      if (student != null) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, StudentHome.id, (_) => false);
                        setState(() {
                          loading = false;
                        });
                      } else {
                        setState(() {
                          loading = false;
                        });
                      }
                    }),
              ),
            ),)
          ],
        )));
  }
}
