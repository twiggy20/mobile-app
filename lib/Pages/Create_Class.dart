import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart' ;
import 'package:mobile_teacher_app/Pages/Enter_Class.dart';
import 'package:mobile_teacher_app/Pages/Response.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class create_class extends StatefulWidget {
  static const String id = "create_class";
  @override
  _create_classState createState() => _create_classState();
}

class _create_classState extends State<create_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children:[
              SizedBox(height: 40),
              Container(
                width: SizeConfig.screenWidth,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                child:Text('Create class',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF002255),
                        fontSize: 30,
                        fontWeight: FontWeight.bold  )),

              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: SizeConfig.screenWidth,
                      height: 25,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Class name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.white,
                              width: 2
                          ))
                  ),

                  Container(
                      width: 280,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 10),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Input class name/title',
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
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: SizeConfig.screenWidth,
                      height: 25,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Class code',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.white,
                              width: 2
                          ))
                  ),

                  Container(
                      width: 280,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 10),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Create a class code',
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
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )
                  ),
                ],
              ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, home.id);
            },
              child:Container(
                  width: 260,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(15,30, 5, 30),
                  padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                  child:Text('Create class',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700  )),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all( Radius.circular(30.0)),
                      border: Border.all(
                          color: Colors.greenAccent,
                          width: 2
                      ))
              ),),

            ],
          )
      ),
    );
  }
}
