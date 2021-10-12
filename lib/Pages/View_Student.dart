import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';


class View_student extends StatelessWidget {
  static const String id = " View_student";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              SizedBox(height:50),
              Container(
                width: SizeConfig.screenWidth,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                child:Text('Student A',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF002255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold  )),
              ),
            ]
        )
    );
  }
}
