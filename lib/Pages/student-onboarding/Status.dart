import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student-onboarding/SignIn.dart';
//import 'package:mobile_app/Pages/Reg_FName.dart';
import 'FirstNameView.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class StudentStatus extends StatefulWidget {
  static const String id = "StudentStatus";
  @override
  _StudentStatusState createState() => _StudentStatusState();
}

class _StudentStatusState extends State<StudentStatus> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(child:
        Column(
            children:[
              Container(
                  width: SizeConfig.screenWidth,
                  height: 130,
                  margin: EdgeInsets.fromLTRB(5.0, 60.0, 10.0, 20.0),
                  padding: EdgeInsets.fromLTRB(30.0, 0, 10.0, 10.0),
                  child: Text('Is this your first time?',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF002255),
                          fontSize: 40,
                          fontWeight: FontWeight.bold  )),
                  decoration: BoxDecoration(
                      //color: Colors.white30,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                    )
                  ),
              SizedBox(height:70),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, FirstNameView.id);
                },
                child:Container(
                    width: 200,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 15.0),
                    padding: EdgeInsets.fromLTRB(0, 5.0, 10.0, 5.0),
                    child: Text('Yes',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Color(0xFF3EC8AF),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(
                            color: Color(0xFF3EC8AF),
                            width: 2
                        ))
                ),
              ),
              SizedBox(height:20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, StudentSignIn.id);
                },
                child:Container(
                    width: 200,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 50.0),
                    padding: EdgeInsets.fromLTRB(0, 5.0, 10.0, 5.0),
                    child: Text('No',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Color(0xFFC8C23E),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                          bottomRight:  Radius.circular(30.0), ),

                        border: Border.all(
                            color: Color(0xFFC8C23E),
                            width: 2
                        ))
                ),
              )
            ]
        )
        )
    );
  }
}
