import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class sign_up extends StatefulWidget {
  // const sign_in({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children:[
              Container(
                  width: 180,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(60.0, 20.0, 20.0, 10.0),
                  padding: EdgeInsets.fromLTRB(0.0, 00.0, 0.0, 0.0),
                  child: Text('Sign up with us',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black,
                          fontSize: 25,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 22,
                      margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('First Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500  )),
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
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child:Text('First Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          ))
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 22,
                      margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Last Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500  )),
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
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child:Text('Input Last Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          ))
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 22,
                      margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Gender',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500  )),
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
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child:Text('Select gender here',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          ))
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(5, 10, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Username/ email',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500  )),
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
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child:Text('Input username/email',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          ))
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 90,
                      height: 22,
                      margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500  )),
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
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child:Text('Create a strong password',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          ))
                  ),
                ],
              ),
              Container(
                  width: 220,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(15,30, 5, 10),
                  padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                  child:Text('Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700  )),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: Colors.black,
                          width: 2
                      ))
              ),
             ]
        ),
      ),
    );
  }
}
