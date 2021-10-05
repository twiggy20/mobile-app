class AppUser{
  final String uid;
  final String firstName;
  final String lastName;
  final String email;
  final String userRole;

  AppUser({this.uid, this.firstName, this.lastName, this.email, this.userRole});

  AppUser.fromData(Map<String, dynamic> data)
      : uid = data['uid'],
        firstName = data['firstName'],
        lastName = data['lastName'],
        email = data['email'],
        userRole = data['userRole'];

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userRole': userRole,
    };
  }
}