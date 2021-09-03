import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class create_class extends StatefulWidget {
  // const sign_in({Key? key}) : super(key: key);

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
              Container(
                  width: 180,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(60.0, 20.0, 20.0, 10.0),
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Text('Create new class',
                      textAlign: TextAlign.left,
                      style: TextStyle(color:Colors.black,
                          fontSize: 20,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 110,
                      height: 25,
                      margin: EdgeInsets.fromLTRB(5, 10, 5,20),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Class name',
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
                      width: 190,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,0, 5, 20),
                      padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                      child:Text('Input class name',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w100  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2
                          ))
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 110,
                      height: 25,
                      margin: EdgeInsets.fromLTRB(5, 30, 5, 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child:Text('Valid date',
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
                      width: 190,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(0,20, 5, 10),
                      padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                      child:Text('Input valid date here',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w100  )),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2
                          ))
                  ),
                ],
              ),
              Container(
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
              ),

            ],
          )
      ),
    );
  }
}
