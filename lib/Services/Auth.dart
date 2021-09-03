import 'package:firebase_auth/firebase_auth.dart';

class Authservice{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  //sign in ano   n
Future AnonSignin() async{
  try{
     AuthResult result = await _auth.signInAnonymously();
     FirebaseUser user= result.user;
     return user;
  }
  catch(e){
    print(e.toString());
      return null;
  }
    }

}