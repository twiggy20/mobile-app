class AppClass{
  String id;
  final String name;
  final String code;

  AppClass({this.id, this.name, this.code});

  AppClass.fromData(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        code = data['code'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }
}