import 'package:flutter/material.dart';

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
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

  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  _nextFocus(FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

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
                  RaisedButton(
                      onPressed: () => {uploadFile()},
                      child: Text('Upload File')),
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
    if (file == null) return;
    // final fileName = file.path;
    final destination = 'files/$fileName';

    UploadTask task = StorageService.uploadFile(destination, file);
    if (task != null) {
      final snapshot = await task.whenComplete(() => {});
      final url = await snapshot.ref.getDownloadURL();
      Lesson lesson = Lesson();
      lesson.fileUrl = url;
      lesson.uid = _classId;
      _classService.addLesson(_classId, lesson);
      print('DOWNLOAD LINK ::::: ${url}');
    }
  }
}
