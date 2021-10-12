import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student-pages/classes/classes.dart';
import 'package:mobile_teacher_app/utils/constant.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';


class JoinClass extends StatefulWidget {
  static const String id = "Classes";
  //const join_class({Key? key}) : super(key: key);

  @override
  _JoinClassState createState() => _JoinClassState();
}

class _JoinClassState extends State<JoinClass> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _joinClassController = TextEditingController();

  @override
  Widget build(BuildContext context){
    SizeConfig().init(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child:
            Column(
                children:[
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
                  SizedBox(height: 60),
                  Column(
                      children: [
                        Text('Join a class',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)
                        ),
                      ]
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    child:ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 280),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Touch here to input class code',
                          hintStyle: TextStyle(color: Colors.grey,  fontSize: 20,
                              fontWeight: FontWeight.normal),
                          fillColor:  Colors.grey,
                          // filled: true,
                          enabledBorder:OutlineInputBorder(
                              borderSide:BorderSide(color:Colors.grey, )
                          ),
                          focusedBorder:OutlineInputBorder(
                              borderSide:BorderSide(color:Colors.black, width:2)
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                     Navigator.pushNamed(context, Classes.id);
                    },
                    child:Container(
                        width: 250,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                        padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                        child:Text('Join',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal  )),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0)),
                            border: Border.all(
                                color: Colors.grey,
                                width: 2
                            ))
                    ),),

                ]
            )
        )
    );
  }

}
