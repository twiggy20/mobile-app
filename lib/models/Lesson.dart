class Lesson {
  final String uid;
  final String title;
  final String fileUrl;

  Lesson({this.uid, this.title, this.fileUrl});

  Lesson.fromData(Map<String, dynamic> data)
      : uid = data['uid'],
        title = data['title'],
        fileUrl = data['fileUrl'];

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'title': title,
      'fileUrl': fileUrl,
    };
  }

}