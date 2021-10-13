import 'package:flutter/material.dart';

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Classroom_Lesson.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';
import 'package:mobile_teacher_app/services/class_service.dart';
import 'package:mobile_teacher_app/services/storage_service.dart';

class LessonForm extends StatefulWidget {
  static const String id = "lesson_form";

  Function callback;

  LessonForm({this.callback});

  @override
  _LessonFormState createState() => _LessonFormState();
}

class _LessonFormState extends State<LessonForm> {
  File file;
  String fileName;

  final _formKey = GlobalKey<FormState>();
  final ClassService _classService = ClassService();
  String _classId;

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();

  final TextEditingController _topicController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  bool loading = false;

  @override
  Widget build(BuildContext context) {

    _classId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson Form'),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        // width: 200,
                        // height: 25,
                        // margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                        // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text('Lesson Topic',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                            border: Border.all(color: Colors.white, width: 2))),
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    controller: _topicController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    focusNode: _nameFocusNode,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter lesson topic'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter topic';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.0,),
                  RaisedButton(
                    onPressed: () => {selectFile()},
                    child: Text('Select File'),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  fileName != null ? Text(fileName) : Container(),
                  SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: double.infinity/2,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          side: BorderSide(color: Colors.greenAccent, width: 2),
                        ),
                        color: Colors.greenAccent,
                        onPressed: () => {uploadFile()},
                        child: loading ? SizedBox(
                          child: CircularProgressIndicator(
                            valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.black12),
                          ),
                          height: 22.0,
                          width: 22.0,
                        )  : Text('Create Lesson')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    // List<File> files = result.paths.map((path) => File(path)).toList();
    final path = result.files.single.path;
    setState(() {
      file = File(path);
      fileName = getImageName(file);
    });
    return file;
  }

  getImageName(File file) {
    if (file == null) {
      return 'No File Selected';
    }
    final parts = file.path.split('/').last.split('.');
    return parts.skip(parts.length - 2).take(2).join('.');
  }

  Future uploadFile() async {
    setState(() {
      loading = true;
    });
    if (file == null) return;
    // final fileName = file.path;
    final destination = 'files/$fileName';

    UploadTask task = StorageService.uploadFile(destination, file);
    if (task != null) {
      final snapshot = await task.whenComplete(() => {});
      final url = await snapshot.ref.getDownloadURL();
      Lesson lesson = Lesson();
      lesson.title = _topicController.text;
      lesson.fileUrl = url;
      lesson.uid = _classId;
      _classService.addLesson(_classId, lesson);
      print('DOWNLOAD LINK ::::: ${url}');
      setState(() {
        loading = false;
      });
      Navigator.pop(context);
      /*Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ClassRoomLesson(courseId: _classId,)),
    );*/
    } else {
      setState(() {
        loading = false;
      });
    }
  }
}
