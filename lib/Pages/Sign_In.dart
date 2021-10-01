import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart' ;
import 'package:mobile_teacher_app/Pages/Sign_Up.dart';
import 'package:mobile_teacher_app/Services/Auth.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
class sign_in extends StatefulWidget {
 // const sign_in({Key? key}) : super(key: key);
  static const String id = "sign_in";
  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  final AuthService _auth= AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children:[
            SizedBox(height: 40),
            InkWell(
            onTap: (){
            Navigator.pushNamed(context, sign_up.id);
            },
            child:Container(
                width:SizeConfig.screenWidth,
                height: 30,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child:Text('Sign up?',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.indigo.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold  )),
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(
                      color: Colors.white,

                    ))
            ),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 25,
                  margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Text('User ID',
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
                    width: 100,
                    height: 25,
                    margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child:Text('Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
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
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    width:SizeConfig.screenWidth,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:Text('Forgot password?',
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
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, home.id);
                  },
                child:Container(
                    width: 260,
                    height: 50,
                  margin: EdgeInsets.fromLTRB(0,20, 20, 30),
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            side: BorderSide(
                            color: Colors.yellow,
                            width: 2
                        ),
                      ),
                      color: Colors.yellow,
                      child:Text('Sign in',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700  )),
                     onPressed: () async {
                        dynamic result = await _auth.AnonSignin();
                        if (result == null) {
                          print('error signing in');
                        }
                        else {
                          print('sign in successful');
                          print(result.uid);
                        }
                      }
                    ),

                ),),
              /*  Container(
                    width: 260,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(15,0, 5, 10),
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child:Text('Back',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700  )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
                        border: Border.all(
                            color: Colors.black,
                            width: 2
                        ))
                ),*/
              ],
            )

          ]

        ),
      ),
    );
  }
}
