import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Join_class extends StatefulWidget {
  //const Join_class({Key? key}) : super(key: key);

  @override
  _Join_classState createState() => _Join_classState();
}

class _Join_classState extends State<Join_class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          Container(
              width: 250,
              height: 35,
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
              padding: EdgeInsets.fromLTRB(0.0, 00.0, 0.0, 0.0),
              child: Text('Add new student',
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
                  width: 100,
                  height: 22,
                  margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child:Text('Class Name',
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
                  child:Text('Input class name',
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
                  width: 100,
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
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:Text('Input password',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    width: 110,
                    height: 30,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child:Text('Create class?',
                        textAlign: TextAlign.left,
                        style: TextStyle(color:  Color(0xFF002255),
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
                    width: 260,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(15,10, 5, 30),
                    padding: EdgeInsets.fromLTRB(8, 10, 10, 0),
                    child:Text('Join class',
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
            ],
          )
        ],
      )

    );
  }
}
