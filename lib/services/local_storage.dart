import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'dart:convert';

import 'package:mobile_teacher_app/models/User.dart';

class SecureStorage {
  static final storage = new FlutterSecureStorage();

  static get(String key) async {
    return await storage.read(key: key);
  }

  static store(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  static remove(String key) async {
    await storage.delete(key: key);
  }


  removeAll() async {
    await storage.deleteAll();
  }

  static getTeacher() async {
    var object = await storage.read(key: 'authUser');
    if (object != null) {
      return AppUser.fromData(json.decode(object));
    }
  }

  static getStudent() async {
    var object = await storage.read(key: 'authStudent');
    if (object != null) {
      return Student.fromData(json.decode(object));
    }
  }

  static getUserDetails() async {
    var object = await storage.read(key: 'authUser');
    if (object != null) {
      Map<String, dynamic> responseJson = jsonDecode(object);
      Map<String, dynamic> value = {
        'name': '${responseJson['auth']['companyUser']['user']['firstName']} ${responseJson['auth']['companyUser']['user']['lastName']}',
        'company': responseJson['auth']['companyUser']['company']['name'],
        'permissions': responseJson['authorities'].split(',')
      };
      return value;
    }
  }
}