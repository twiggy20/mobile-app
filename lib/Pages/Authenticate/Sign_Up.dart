import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Sign_In.dart';
import 'package:mobile_teacher_app/Services/auth_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  final emailController = TextEditingController();
  final firstController = TextEditingController();
  final lastController = TextEditingController();
  final passwordController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Container(
                    width: SizeConfig.screenWidth,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text('Sign up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.white,
                        ))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          width: SizeConfig.screenWidth,
                          height: 22,
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('First name',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400)),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                color: Colors.white,
                              ))),
                    ),


                          Expanded(
                              child: Container(
                                  width: SizeConfig.screenWidth,
                                  height: 25,
                          //padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('Sign in?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              border: Border.all(
                                color: Colors.white,
                              ))),
                    )

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input your first name',
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
                      controller: firstController,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 22,
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Last name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input your last name',
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
                      controller: lastController,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 22,
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'create a strong password',
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
                      obscureText: true,
                      controller: passwordController,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 22,
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text('Email',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.white,
                        ))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: SizeConfig.screenWidth,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(10, 0, 5, 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Input a valid email',
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
                      controller: emailController,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ],
            ),
          ),
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
                ) : Text('Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                onPressed: () async {
                  setState(() {
                    loading = true;
                  });
                  dynamic result = await _auth.signUpWithEmail(email: emailController.text, password: passwordController.text,
                      firstName: firstController.text, lastName: lastController.text);
                  if (result == null) {
                    print('error signing up');
                    setState(() {
                      loading = false;
                    });

                  } else {
                      Navigator.pushNamedAndRemoveUntil(context, SignIn.id, (_) => false);
                  }
                }),
          ),)
        ]),
      ),
    );
  }
}
