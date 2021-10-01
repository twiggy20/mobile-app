import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_teacher_app/models/User.dart';
class AuthService{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  //create user object based on firebaseuser
  User _userFromFirebaseUser(FirebaseUser user){
    return user !=null? User(uid: user.uid):null;
  }
Stream<User> get user{
    return _auth.onAuthStateChanged
    .map( _userFromFirebaseUser);
}
  //sign in anon
Future AnonSignin() async{
  try{
     AuthResult result = await _auth.signInAnonymously();
     FirebaseUser user= result.user;
     return _userFromFirebaseUser(user);
  }
  catch(e){
    print(e.toString());
      return null;
  }
    }

}