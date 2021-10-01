import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/New_teacher.dart';
import 'package:mobile_teacher_app/Pages/Sign_In.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class sign_up extends StatefulWidget {
  static const String id = "sign_up";

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            children:[
              SizedBox(height: 40),
                Container(
                    width:SizeConfig.screenWidth,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:Text('Sign up',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.indigo.shade900,
                            fontSize: 30,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.white,
                        ))
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 20,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('First name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.white,
                          ))
                  ),
                  Container(
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 5),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Input your first name',
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
                      width: 90,
                      height: 20,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Last name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.white,
                          ))
                  ),
                  Container(
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 5),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'Input your last name',
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
                      width: 90,
                      height: 20,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Gender',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.white,
                          ))
                  ),
                  Container(
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 5),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'select your gender',
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
                      width: 90,
                      height: 20,
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.white,
                          ))
                  ),
                  Container(
                      width: 280,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(10,0, 5, 5),
                      child: TextFormField(
                        decoration:InputDecoration(
                          hintText:'create a strong password',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 90,
                          height: 20,
                          margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child:Text('Email',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400  )),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                color: Colors.white,
                              ))
                      ),
                      Container(
                          width: 280,
                          height: 40,
                          margin: EdgeInsets.fromLTRB(10,0, 5, 5),
                          child: TextFormField(
                            decoration:InputDecoration(
                              hintText:'Input your email address',
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,New_teacher.id );

                    },
                    child: Container(
                      width: 260,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,20, 20, 30),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(36))
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            fontSize:20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,sign_in.id );

                    },
                  child:Container(
                      width:SizeConfig.screenWidth,
                      height: 30,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child:Text('Sign in?',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 15,
                              fontWeight: FontWeight.w400  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(
                            color: Colors.white,

                          ))
                  ),
                  )
                ],
              )

            ]

        ),
      ),
    );
  }
}
