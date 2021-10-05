import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/models/app_class.dart';

class ClassService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _classReference =
      FirebaseFirestore.instance.collection('classes');

  Future addClass({
    String name,
    String code,
  }) async {
    try {
      return await _classReference.add({name: name, code: code});
    } catch (e) {
      print(e.toString());
    }
  }

  void getClass(String uid) async {
    DocumentSnapshot documentSnapshot;
    try {
      documentSnapshot = await _classReference.doc(uid).get();
      print(documentSnapshot.data);
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
      return classes;
    } catch (e) {
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
}
