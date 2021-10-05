import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/models/app_class.dart';

class ClassService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference _classReference =
      FirebaseFirestore.instance.collection('notes');

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

  void getClass() async {
    DocumentSnapshot documentSnapshot;
    try {
      documentSnapshot = await _classReference.doc('testUser').get();
      print(documentSnapshot.data);
    } catch (e) {
      print(e);
    }
  }

  void updateClass() async {
    try {
      _firestore.collection('users').doc('testUser').update({
        'firstName': 'Alan',
      });
    } catch (e) {
      print(e);
    }
  }

  Future allClasses() async {
    try {
      List<QueryDocumentSnapshot> movies = await _classReference
          .limit(4)
          .get()
          .then((QuerySnapshot querySnapshot) => querySnapshot.docs);
      /*List<QueryDocumentSnapshot<AppClass>> movies = await _classReference.limit(4).get().then((QuerySnapshot querySnapshot) {
        print(querySnapshot.docs.length);
        querySnapshot.docs.forEach((doc) {
          print(doc["first_name"]);
        });
      });*/
      return movies;
    } catch (e) {
      e.message;
    }
  }

  void _delete() async {
    try {
      _firestore.collection('users').doc('testUser').delete();
    } catch (e) {
      print(e);
    }
  }
}
