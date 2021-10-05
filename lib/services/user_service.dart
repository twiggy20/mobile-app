import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_teacher_app/models/User.dart';

class UserService {
  final CollectionReference _usersReference =
      FirebaseFirestore.instance.collection('users');

  Future createUser(AppUser user) async {
    try {
      await _usersReference.doc(user.uid).set(user.toJson());
    } catch (e) {
      return e.message;
    }
  }

  Future getUser(String uid) async {
    try {
      var userData = await _usersReference.doc(uid).get();
      return AppUser.fromData(userData.data());
    } catch (e) {
      return e.message;
    }
  }
}
