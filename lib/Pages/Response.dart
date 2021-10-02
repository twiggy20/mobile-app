import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';

import 'package:mobile_teacher_app/utils/size_config.dart';
class Response extends StatelessWidget {
  static const String id = "Response";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          SizedBox(height: 80,),
                InkWell(
                onTap: (){
         // Navigator.pushNamed(context, sign_up.id);
          },
          child:Container(
              width: SizeConfig.screenWidth,
              height: 300,
              margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:Text('Your class \nhas been \ncreated',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF002255),
                      fontSize: 30,
                      fontWeight: FontWeight.w400  )),
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(
                      color: Colors.white,
                      width: 2
                  ))
          ),
                ),
        ]

      ),
    );
  }
}
