class Student{
  String id;
  final String firstName;
  final String surname;
  final int age;
  final String level;
  final String gender;

  Student({this.id, this.firstName, this.surname, this.age, this.level, this.gender});

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'surname': surname,
      'age': age,
      'level': level,
      'gender': gender,
    };
  }

  Student.fromData(Map<String, dynamic> data)
      : firstName = data['firstName'],
        surname = data['surname'],
        age = data['age'],
        level = data['level'],
        gender = data['gender'];
}