import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart';
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';
import 'package:mobile_teacher_app/Pages/Response.dart';
import 'package:mobile_teacher_app/Services/class_service.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class CreateClass extends StatefulWidget {
  static const String id = "create_class";

  @override
  _CreateClassState createState() => _CreateClassState();
}

class _CreateClassState extends State<CreateClass> {
  final ClassService _classService = locator<ClassService>();
  final nameController = TextEditingController();
  final codeController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            width: SizeConfig.screenWidth,
            height: 50,
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
            child: Text('Create class',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF002255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 25,
                  margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('Class name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.white, width: 2))),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Input class name/title',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      fillColor: Colors.grey,
                      // filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                    ),
                    controller: nameController,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 25,
                  margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text('Class code',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      border: Border.all(color: Colors.white, width: 2))),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Create a class code',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      fillColor: Colors.grey,
                      // filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                    ),
                    controller: codeController,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  )),
            ],
          ),
          SizedBox(height: 30.0,),
          /*InkWell(
            onTap: () async {
              dynamic result = await _classService.addClass(
                  name: nameController.text, code: codeController.text);
              if (result == null) {
                Fluttertoast.showToast(
                    msg: "No input field should be empty",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.redAccent,
                    textColor: Colors.white,
                    fontSize: 16.0);
              } else {
                print('NAVIGATE!!!!');
                print(result);
                Navigator.pushNamed(context, Home.id);
              }

              // Navigator.pushNamed(context, Home.id);
            },
            child: Container(
                width: 260,
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 30, 5, 30),
                padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                child: Text('Create class',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    border: Border.all(color: Colors.greenAccent, width: 2))),
          ),*/
          Padding(padding: EdgeInsets.all(8.0), child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  side: BorderSide(color: Colors.greenAccent, width: 2),
                ),
                color: Colors.greenAccent,
                child: loading ? SizedBox(
                  child: CircularProgressIndicator(
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.black12),
                  ),
                  height: 22.0,
                  width: 22.0,
                ) : Text('Create Class',
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
                  dynamic result = await _classService.addClass(
                      name: nameController.text, code: codeController.text);
                  if (result == null) {
                    print('error signing in');
                    setState(() {
                      loading = false;
                    });

                  } else {
                    print(result);
                    print('sign in successful');

                    // Navigator.pushNamed(context, New_teacher.id);

                    Navigator.pushNamedAndRemoveUntil(context, Home.id, (_) => false);

                  }
                }),
          ),)
        ],
      )),
    );
  }
}
