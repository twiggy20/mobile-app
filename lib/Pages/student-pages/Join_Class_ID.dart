import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student-pages/Join_Class.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class JoinClassID extends StatefulWidget {
  static const String id = "join_class_ID";
  //const join_class({Key? key}) : super(key: key);

  @override
  _JoinClassIDState createState() => _JoinClassIDState();
}

class _JoinClassIDState extends State<JoinClassID> {
  @override
  Widget build(BuildContext context) {
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
     // SizedBox(width: 2,),
      Expanded(
        child: Container(
          width: SizeConfig.screenWidth,
          height: 4,
          decoration: BoxDecoration(
            color: Color(0xFFDADADA),
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
                        Text('Please confirm your ID\n to continue',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF002255),
                                fontSize: 30,
                                fontWeight: FontWeight.normal)
                        ),
                      ]
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                      child:ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 280),
                        child: TextFormField(
                          decoration:InputDecoration(
                            hintText:'Touch here to input your  ID',
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
                  Navigator.pushNamed(context,JoinClass.id);
                  },
                  child:Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                      child:Text('Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color: Colors.black,
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
                 /* InkWell(
                  onTap: (){
                 // Navigator.pushNamed(context,home.id);
                  },
                child:  Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 10, 10),
                      child:Text('Not now',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal  )),
                      decoration: BoxDecoration(
                          color:Color(0xFF002255),
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          border: Border.all(
                              color: Color(0xFF002255),
                              width: 2
                          ))
                  ),
                  ),*/
                ]
            )
        )
    );
  }
}
