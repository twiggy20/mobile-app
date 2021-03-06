import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
import 'GenderView.dart';

// ignore: camel_case_types
class ClassView extends StatefulWidget {
  //const Reg_class2({Key? key}) : super(key: key);
  static const String id = "class2";

  @override
  _ClassViewState createState() => _ClassViewState();
}

// ignore: camel_case_types
class _ClassViewState extends State<ClassView> {
  final classController = TextEditingController();
  Student _student;
  var level;
  List<String> _classes = ['Basic 1', 'Basic 2', 'Basic 3'];

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
                      border: Border.all(color: Colors.green, width: 3)),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: Container(
                  width: SizeConfig.screenWidth,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
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
                  ),
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
                  ),
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
                    color: Color(0xFFDADADA),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          Column(
            children: [
              Text('What class are you in?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 70),
              SingleChildScrollView(
                child: InkWell(
                  onTap: () {},
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 280),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          labelText: "Select Class",
                          contentPadding:
                          EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      value: level,
                      onChanged: (val) => _student.level = val,
                      items:
                      _classes.map<DropdownMenuItem>((type) {
                        return DropdownMenuItem(
                            value: type,
                            child:
                            Text("${type}"));
                      }).toList(),
                    )
                    /*TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Touch here to select your grade',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                        fillColor: Colors.grey[100],
                        // filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                      ),
                      controller: classController,
                    )*/,
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    // _student.level = classController.text;
                    Navigator.pushNamed(context, GenderView.id,
                        arguments: _student);
                  },
                  child: Container(
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
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0)),
                          border: Border.all(color: Colors.black, width: 2)))),
            ],
          )
        ])));
  }
}
