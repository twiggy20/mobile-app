import 'package:mobile_teacher_app/models/User.dart';

class AppClass{
  String id;
  final String name;
  final String code;
  dynamic creator;

  AppClass({this.id, this.name, this.code});

  AppClass.fromData(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        creator = data['creator'],
        code = data['code'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'creator': creator,
      'code': code,
    };
  }
}