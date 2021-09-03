import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class classroom extends StatefulWidget {

  @override
  _classroomState createState() => _classroomState();
}

class _classroomState extends State<classroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Class Name',
              style: TextStyle(color: Color(0xFF002255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Column(
           crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children:[
                    Column(
                        children:[
                          Row(
                            children: [
                              Text('Student',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFF726E18),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  )),
                              Text('   8',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Color(0xFFD81846),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  )),
                            ],
                          ),

                          Container(
                            width: 156,
                            height: 5,
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            decoration: BoxDecoration(
                                color:  Color(0xFF726E18),

                                border: Border.all(
                                    color: Color(0xFF726E18),
                                    width: 2
                                )),
                          )
                        ]
                    ),
                    Column(
                        children:[
                          Text('Lesson',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Color(0xFF27722F),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold  )),
                          Container(
                            width: 156,
                            height: 5,
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 10),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            decoration: BoxDecoration(
                                color: Color(0xFFC4C4C4),

                                border: Border.all(
                                    color: Color(0xFFC4C4C4),
                                    width: 2
                                )),
                          )
                        ]
                    )
                  ]
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
                          child: FittedBox(
                              fit: BoxFit.cover,
                              child: ImageIcon(AssetImage("Assets/school girl.png"), color: Colors.indigo.shade900,)),
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  )


                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:BorderRadius.all(Radius.circular(50)),


                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 60,
                          height: 50,
                          margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),

                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                               borderRadius:BorderRadius.all(Radius.circular(50)),

                              border: Border.all(
                                  color: Colors.grey[400],
                                  width: 2
                              ))
                      ),
                      Text('Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.indigo.shade900,
                              fontSize: 20,
                              fontWeight: FontWeight.bold  )),
                    ],
                  ),

                ],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:[
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 22,
                            width: 22,
                            margin: EdgeInsets.fromLTRB(0,5, 20, 0),
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: FittedBox(
                                fit: BoxFit.cover,
                                child: ImageIcon(AssetImage("Assets/add_new.png"), color: Color(0xFF3D363C),)),
                            color:Colors.white
                          // color: Color(0xFF303D50),

                        ),
                            Container(
                            height: 15,
                            width: 31,
                            margin: EdgeInsets.fromLTRB(0,0, 20, 0),
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Text('New',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF3D363C),
                                fontSize: 12,
                                fontWeight: FontWeight.bold  )),

                            )
                      ],
                    )
                  ]
              )
            ]
        )
//a button should be here

    );
  }
}
