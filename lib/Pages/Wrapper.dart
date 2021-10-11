import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Authenticate/Authenticate.dart' ;
import 'package:provider/provider.dart';
import 'Class/Create_Class.dart';
import 'package:mobile_teacher_app/models/user.dart';
class Wrapper extends StatelessWidget {
  //const wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user=Provider.of<AppUser>(context);
    return Authenticate() ;
  }
}
