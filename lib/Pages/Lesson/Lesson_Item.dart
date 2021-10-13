import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;
  final Function onDeleteItem;

  const LessonItem({
    Key key,
    this.lesson,
    this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: lesson.fileUrl != null ? null : 60,
      margin: const EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(lesson.title, textAlign: TextAlign.left, style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),),
                // If the image is not null load the imageURL
                lesson.fileUrl != null
                    ? SizedBox(
                        height: 250,
                        child: CachedNetworkImage(
                          imageUrl: lesson.fileUrl,
                          placeholder: (context, url) =>
                              Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      )
                    // If the image is null show nothing
                    : Container(),

              ],
            ),
          ))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(blurRadius: 8, color: Colors.grey[200], spreadRadius: 3)
          ]),
    );
  }
}
