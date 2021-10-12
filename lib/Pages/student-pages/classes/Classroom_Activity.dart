import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class classroom_Act extends StatefulWidget {
  static const String id = "class_room";

  @override
  _classroom_ActState createState() => _classroom_ActState();
}

class _classroom_ActState extends State<classroom_Act> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Topic',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold  )),
                Container(
                    width: 290,
                    height: 170,
                    margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                    padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                    child: Text('subject Activity here',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold  )),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.grey[100],
                            width: 2
                        ))
                ),
              ],
            ),
          ]
       )
//a button should be here

    );
  }
}
