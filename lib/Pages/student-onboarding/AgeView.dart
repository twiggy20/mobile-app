import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
import 'ClassView.dart';

class AgeView extends StatefulWidget {
  //const Reg_age2({Key? key}) : super(key: key);
  static const String id = "reg_age2";

  @override
  _AgeViewState createState() => _AgeViewState();
}

class _AgeViewState extends State<AgeView> {

  final ageController = TextEditingController();
  Student _student;

  @override
  Widget build(BuildContext context) {

    _student = ModalRoute.of(context).settings.arguments as Student;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(
                              color: Colors.green,
                              width: 3
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 3,),
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 3,),
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color(0xFFDADADA),
                      ),
                    ),
                  ),
                  SizedBox(width: 3,),
                  Expanded(
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Color(0xFFDADADA),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80,),
              Column(
                children: [
                  Text('How old are you?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height:70),
                  SingleChildScrollView(
                    child:InkWell(
                      onTap: (){

                      },
                      child:ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 280),
                        child: TextFormField(
                          decoration:InputDecoration(
                            hintText:'Touch here to select your age',
                            hintStyle: TextStyle(color: Colors.grey,  fontSize: 20,
                                fontWeight: FontWeight.normal),
                            fillColor:  Colors.grey[100],
                            // filled: true,
                            enabledBorder:OutlineInputBorder(
                                borderSide:BorderSide(color:Colors.grey, width:2)
                            ),
                            focusedBorder:OutlineInputBorder(
                                borderSide:BorderSide(color:Colors.black, width:2)
                            ),
                          ),
                          controller: ageController,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        _student.age = int. parse(ageController.text);
                        Navigator.pushNamed(context, ClassView.id, arguments: _student);
                      },
                      child:Container(
                          width: 250,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(10, 90, 10, 10),
                          padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                          child: Text('Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(30)
                                 ),
                              border: Border.all(color: Colors.black, width: 2)))
                  ),
                ],
              )
            ])));
  }
}
