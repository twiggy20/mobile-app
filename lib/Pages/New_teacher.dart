import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Status.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class New_teacher extends StatelessWidget {
  static const String id = "New_teacher";

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
                  child:Text('Welcome',
                      textAlign: TextAlign.center,
                      style: TextStyle(color:  Color(0xFF002255),
                          fontSize: 30,
                          fontWeight: FontWeight.bold  )),

                ),

                SizedBox(height:60),
                SingleChildScrollView(
                  child:InkWell(
                    onTap: (){
                     // Navigator.pushNamed(context,home.id);
                    },
                    child:ConstrainedBox(
                      constraints: BoxConstraints.tightFor(width: 280),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Start a new class',
                          hintStyle: TextStyle(color: Colors.white,  fontSize: 15,
                              fontWeight: FontWeight.normal),
                          fillColor:  Colors.greenAccent,
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
                ),
                SizedBox(height:80),
                InkWell(
                  onTap: (){
                    // Navigator.pushNamed(context,home.id);
                  },
                  child:ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 280),
                    child: TextFormField(
                      decoration:InputDecoration(
                        hintText:'Use existing class',
                        hintStyle: TextStyle(color: Colors.white,  fontSize: 15,
                            fontWeight: FontWeight.normal),
                        fillColor:  Colors.yellow,
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
              ],
            )
        )
    );
  }
}
