import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class classroom_lesson extends StatefulWidget {
  static const String id = "class_room";
  @override
  _classroom_lessonState createState() => _classroom_lessonState();
}

class _classroom_lessonState extends State<classroom_lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Topic',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold  )),
                      Container(
                          width: 290,
                          height: 170,
                          margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: Text('subject lesson here',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold  )),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                              border: Border.all(
                                  color: Colors.grey[100],
                                  width: 2
                              ))
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 hour ago',
                         // textAlign: TextAlign.right,
                          style: TextStyle(color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.w200  )
                      )
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Older Lesson',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)
                      ),
                      Row(
                        children: [
                          Container(

                            width: 140,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 10.0),
                            padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey[100],
                                    width: 2
                                )),
                            child:Text('topic 2',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white30,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold  )),

                          ),

                          Container(
                            width: 140,
                            height: 80,
                            margin: EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 10.0),
                            padding: EdgeInsets.fromLTRB(8.0, 20.0, 0.0, 10.0),
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                border: Border.all(
                                    color: Colors.grey[100],
                                    width: 2
                                )),
                            child:Text('topic 3',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white30,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold  )),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
    );
  }
}
