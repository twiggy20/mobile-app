import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Services/Auth.dart';
class sign_in extends StatefulWidget {
 // const sign_in({Key? key}) : super(key: key);
  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  final Authservice _auth= Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Container(
                width: 150,
                height: 70,
                margin: EdgeInsets.fromLTRB(60.0, 20.0, 20.0, 10.0),
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Text('Sign in',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.indigo[400],
                        fontSize: 40,
                        fontWeight: FontWeight.bold  )),
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
                    width: 260,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(15,0, 5, 10),
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child:Text('Input username/email',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.yellow[300],
                            width: 2
                        ))
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 80,
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
                    width: 260,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(15,0, 5, 10),
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child:Text('Input password',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300  )),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.yellow[300],
                            width: 2
                        ))
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    width: 110,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(15, 0, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child:Text('Forgot password?',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.indigo.shade900,
                            fontSize: 15,
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
                    width: 260,
                    height: 55,
                    margin: EdgeInsets.fromLTRB(15,0, 5, 30),
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0)),
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
                          print(result);
                        }
                      }
                    ),
                ),
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
