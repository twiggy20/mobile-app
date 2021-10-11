import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Lesson_Form.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';
import 'package:mobile_teacher_app/services/class_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class ClassRoomLesson extends StatefulWidget {
  static const String id = "classroom_lesson";

  final String courseId;

  ClassRoomLesson({this.courseId});

  @override
  _ClassRoomLessonState createState() => _ClassRoomLessonState();
}

class _ClassRoomLessonState extends State<ClassRoomLesson> {
  ClassService _classService = ClassService();
  List<Lesson> _lessons;
  bool loading = true;

  @override
  void initState() {
    loadLessons();
    super.initState();
  }

  loadLessons() async {
    _lessons = await _classService.retrieveLessons(widget.courseId);
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: SizeConfig.screenWidth * 0.9,
                          height: 40,
                          padding: EdgeInsets.fromLTRB(0, 5, 0.0, 0),
                          child: Text('Topic',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, LessonForm.id);
                            },
                            icon: Icon(Icons.add),
                            label: Text("Add Lesson"),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: SizeConfig.screenWidth * 0.9,
                            height: 230,
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                            child: Text('subject lesson here',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(
                                    color: Colors.grey[100], width: 2))),
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
                SizedBox(
                  height: 30,
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth,
                      height: 20,
                      margin: EdgeInsets.fromLTRB(0, 0, 5.0, 10),
                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                      child: Text('Older Lesson',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
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
                                  color: Colors.grey[100], width: 2)),
                          child: Text('topic 2',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 140,
                          height: 80,
                          margin: EdgeInsets.fromLTRB(15.0, 0, 10, 10.0),
                          padding: EdgeInsets.fromLTRB(15.0, 20.0, 5.0, 10.0),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              border: Border.all(
                                  color: Colors.grey[100], width: 2)),
                          child: Text('topic 3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ));
  }
}
