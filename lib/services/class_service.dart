import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';
import 'package:mobile_teacher_app/models/app_class.dart';

class ClassService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _classReference =
      FirebaseFirestore.instance.collection('classes');
  final CollectionReference _classStudentReference =
      FirebaseFirestore.instance.collection('class_students');

  Future addClass({
    String name,
    String code,
  }) async {
    try {
      DocumentReference newClass =
          await _classReference.add({'name': name, 'code': code});
      print(newClass.id);
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

  void addStudent(String classId, String studentId) async {
    try {
      var classStudent = _classStudentReference.doc('${classId}_${studentId}');
      Map<String, dynamic> data = new Map();
      data['class'] = classId;
      data['student'] = studentId;
      await classStudent.set(data);
    } catch (e) {
      print(e);
    }
  }

  Future getClassStudents(String classId) async {
    var classes =
        await _classStudentReference.where('classId', isEqualTo: classId).get();
    classes.docs.forEach((element) {
      print(element.data());
    });
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
      return classes.map((e) => AppClass.fromData(e.data())).toList();
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

  Future addLesson(String courseId, Lesson lesson) {
    try {
      _classReference.doc(courseId).collection("lessons").add(lesson.toJson());
    } catch (e) {
      print(e);
    }
  }

  Future retrieveLessons(String courseId) {
    _classReference
        .doc(courseId)
        .collection("lessons")
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    }) ;
  }
}
