import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_teacher_app/Services/user_service.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/User.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserService _userService = locator<UserService>();

  AppUser _currentUser;

  AppUser get currentUser => _currentUser;

  //create user object based on firebaseuser
  User _userFromFirebaseUser(User user) {
    return user != null ? user : null;
  }

  Stream<User> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anon
  Future AnonSignin() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      print('credent ${result.user}');
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future loginWithEmail({
    String email,
    String password,
  }) async {
    try {
      var authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      await _populateCurrentUser(authResult.user);
      return authResult.user != null;
    } catch (e) {
      print(e);
      // return e.message;
    }
  }

  Future signUpWithEmail(
      {@required String email,
      @required String password,
      @required String firstName,
      @required String lastName}) async {
    try {
      var authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      _currentUser = AppUser(
        uid: authResult.user.uid,
        email: email,
        firstName: firstName,
        lastName: lastName,
        userRole: 'TEACHER',
      );

      await _userService.createUser(_currentUser);
      return authResult.user != null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      return e.message;
    }
  }

  Future<bool> isUserLoggedIn() async {
    var user = await _auth.currentUser;
    await _populateCurrentUser(user);
    return user != null;
  }

  Future _populateCurrentUser(User user) async {
    if (user != null) {
      _currentUser = await _userService.getUser(user.uid);
    }
  }

  Future<void> logUserOut() async {
    return await _auth.signOut();
  }
}
