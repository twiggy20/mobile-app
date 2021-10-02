import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class classroom_lesson extends StatefulWidget {

  static const String id = "classroom_lesson";
  @override
  _classroom_lessonState createState() => _classroom_lessonState();
}

class _classroom_lessonState extends State<classroom_lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Class Name',
              style: TextStyle(color: Color(0xFF002255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: 25,
                    //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child:Text('Student',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold  )),

                  ),
                ),
                SizedBox(width: 7,),
                /*  InkWell(
                  onTap: (){
                  Navigator.pushNamed(context, classroom.id);
                  },*/
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, classroom_lesson.id);
                    },
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 25,
                      child:Text('Lesson',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: 4,
                    //padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color:Colors.grey

                        )
                    ),
                  ),
                ),
                SizedBox(width: 7,),
                Expanded(
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: 4,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(
                            color:Colors.greenAccent

                        )
                    ),
                  ),
                ),
              ],
            ),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: SizeConfig.screenWidth,
                      height: 40,
                      padding: EdgeInsets.fromLTRB(0, 5, 0.0, 0),
                      child:Text(
                          'Topic',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width:  SizeConfig.screenWidth,
                        height: 230,
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: Text('subject lesson here',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold  )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            border: Border.all(
                                color: Colors.grey[100],
                                width: 2
                            ))
                    ),
                  ],
                )
              ],
            ),
          /*  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1 hour ago',
                    // textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w200  )
                )
              ],
            ),*/
            SizedBox(height: 30,),
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: SizeConfig.screenWidth,
                  height: 20,
                  margin: EdgeInsets.fromLTRB(0, 0, 5.0, 10),
                  padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                child:Text('Older Lesson',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                ),),
                Row(
                  children: [
                    Container(
                      width: 140,
                      height: 80,
                      margin: EdgeInsets.fromLTRB(15.0, 0, 5.0, 10.0),
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
                      margin: EdgeInsets.fromLTRB(15.0, 0, 10, 10.0),
                      padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 10.0),
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
