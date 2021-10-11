import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/models/app_class.dart';

class ClassService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _classReference =
      FirebaseFirestore.instance.collection('classes');
  final CollectionReference _classStudentReference =
      FirebaseFirestore.instance.collection('class_students');
  final CollectionReference _studentReference =
      FirebaseFirestore.instance.collection('students');

  Future addClass({
    String name,
    String code,
  }) async {
    try {
      var newClass = await _classReference.doc().id;
      await _classReference.doc().set({'id': newClass, 'name': name, 'code': code});
      return newClass;
    } catch (e) {
      print(e.toString());
    }
  }

  Future getClass(String uid) async {
    DocumentSnapshot documentSnapshot;
    try {
      documentSnapshot = await _classReference.doc(uid).get();
      print(documentSnapshot.data());
    } catch (e) {
      print(e);
    }
  }

  Future addStudent(String classId, Student student) async {
    try {
      var classStudent = _classStudentReference.doc('${classId}_${student.id}');
      Map<String, dynamic> data = new Map();
      data['class'] = classId;
      data['student'] = student.toJson();
      await classStudent.set(data);
      return student;
    } catch (e) {
      print(e);
    }
  }

  Future getClassStudents(String classId) async {
    try {
      List<QueryDocumentSnapshot> students =
      await _classStudentReference.where('class', isEqualTo: classId).get().then((QuerySnapshot querySnapshot) => querySnapshot.docs);
      // await _classStudentReference.doc('FgWsrKKMHYFErHnznITA_DzQyS1bHl7GtQon3YC5F').delete().then((value) => print('SUCCESS'));
      print('LENGTH ${students.length}');
      students.forEach((element) {
        print(element.id);
        print(element.data()['student']);
        // print('${json.decode(element.data()['student'])}');
        // var student = Student.fromData(element.data()['student']);
        // print('STUD >>>>>> ${student.firstName}');
      });
      // var myStud = students.where((element) => element.data()['student'].runtimeType != 'String').toList();
      students.forEach((element) {
        print(element.data()['student']);
      });
      return students.map((e) => Student.fromData(e.data()['student'])).toList();
    } catch (e) {
      print(e);
    }

  }

  void updateClass(String uid) async {
    try {
      _classReference.doc(uid).update({
        //add data
      });
    } catch (e) {
      print(e);
    }
  }

  Future allClasses() async {
    try {
      List<QueryDocumentSnapshot> classes = await _classReference
          .limit(4)
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs);
      var mappedClass = classes.map((e) {
        AppClass _class = AppClass.fromData(e.data());
        _class.id = e.id;
        return _class;
      });
      return mappedClass.toList();
    } catch (e) {
      print('Error ${e.toString()}');
      e.message;
    }
  }

  void _delete(String uid) async {
    try {
      _classReference.doc(uid).delete();
    } catch (e) {
      print(e);
    }
  }

  Future addLesson(String courseId, Lesson lesson) async {
    try {
      await _classReference.doc(courseId).collection("lessons").add(lesson.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future retrieveLessons(String courseId) async {
    try {
      print('TRYINGGGGG');
      List<QueryDocumentSnapshot> lessons = await _classReference
          .doc(courseId).collection("lesson")
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs);
      print('LENGTH ${lessons.length}');
      return lessons.map((e) => Lesson.fromData(e.data())).toList();
    } catch(e) {
      print(e);
    }
    /*await _classReference
        .doc(courseId)
        .collection("lessons")
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print('SIMP::>>>>> ${result.data()}');
      });
    }) ;*/
  }

  Future allStudents() async {
    try {
      List<QueryDocumentSnapshot> students = await _studentReference
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs);
      var mappedClass = students.map((e) {
        Student _student = Student.fromData(e.data());
        _student.id = e.id;
        return _student;
      });
      return mappedClass.toList();
    } catch (e) {
      print('Error ${e.toString()}');
      e.message;
    }
  }

}
