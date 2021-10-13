import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Lesson_Form.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Lesson_Item.dart';
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
    if (loading) {
      return Center(
            child: CircularProgressIndicator(),
          );
    } else {
      return Scaffold(
            body: SafeArea(
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
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
                              Navigator.pushNamed(context, LessonForm.id, arguments: widget.courseId);
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: FutureBuilder(
                        future: _classService.retrieveLessons(widget.courseId),
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          if (snapshot.hasError) {
                            return Text('Something went wrong');
                          }
                          if (snapshot.hasData) {
                            if (snapshot.data.length > 0) {
                              return
                                Container(
                                  // height: MediaQuery.of(context).size.height * 0.4,
                                  child: ListView.builder(
                                      itemCount: snapshot.data.length,
                                      itemBuilder: (context, index) {

                                        Lesson lesson = snapshot.data[index];
                                        return Container(
                                          child: SizedBox(
                                            // height: MediaQuery.of(context).size.height * 0.15,
                                            child: LessonItem(lesson: lesson,),
                                          ),
                                        );
                                      }),
                                );
                            } else {
                              return Center(
                                child: Text('No lessons have been added'),
                              );
                            }
                          }
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    )
                  ],
                ),
              ),
          ),
            ));
    }
  }
}
