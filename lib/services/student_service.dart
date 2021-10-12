
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/dialog_service.dart';
import 'package:nanoid/nanoid.dart';


class StudentService {

  final DialogService _dialogService = locator<DialogService>();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _studentReference =
  FirebaseFirestore.instance.collection('students');

  Student _currentUser;

  Student get currentStudent => _currentUser;

  Future addStudent(Student student) async {
    student.code = customAlphabet('1234567890ABCDEF', 5);
    try {
      await _studentReference.doc(student.code).set(student.toJson());
      print(student.code);
      _currentUser = student;
      return student;
    } catch (e) {
      await _dialogService.showDialog(
        title: 'Registration Failed',
        description: e.toString(),
      );
      print(e.toString());
    }
  }

  Future<Student> getStudent(String studentId) async {
    try {
      DocumentSnapshot documentSnapshot = await _studentReference.doc(studentId).get();
      if (documentSnapshot.exists) {
        _currentUser = Student.fromData(documentSnapshot.data());
        return _currentUser;
      } else {
        await _dialogService.showDialog(
          title: 'Login Failed',
          description: 'Invalid student code',
        );
      }
    } catch(e) {
      await _dialogService.showDialog(
        title: 'Login Failed',
        description: 'Invalid student code',
      );
      print(e);
    }
  }
}