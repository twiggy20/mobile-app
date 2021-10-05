class AppClass{
  final String uid;
  final String name;
  final String code;

  AppClass({this.uid, this.name, this.code});

  AppClass.fromData(Map<String, dynamic> data)
      : uid = data['uid'],
        name = data['name'],
        code = data['code'];

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'code': code,
    };
  }
}