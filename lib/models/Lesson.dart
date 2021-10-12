class Lesson {
  String uid;
  String title;
  String fileUrl;
  String fileName;

  Lesson({this.uid, this.title, this.fileUrl, this.fileName});

  Lesson.fromData(Map<String, dynamic> data)
      : uid = data['uid'],
        title = data['title'],
        fileName = data['fileName'],
        fileUrl = data['fileUrl'];

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'title': title,
      'fileName': fileName,
      'fileUrl': fileUrl,
    };
  }

}