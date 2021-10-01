import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Home/Home.dart' ;
class home extends StatefulWidget {
  static const String id = "home";
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(color: Color(0xFF002255),
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 125,
                height: 25,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Text('Recent Classes',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF332D2D),
                        fontSize: 20,
                        fontWeight: FontWeight.w700  )),
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 2
                    ))
            ),
            Container(
                width: 260,
                height: 60,
                margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    border: Border.all(
                        color: Colors.grey[400],
                        width: 2
                    )),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Science',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Color(0xFF002255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold  )),
                      ],
                    ),

                    Row(
                      children: [
                        Text('Energy.  ',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF000000),
                                fontSize: 17,
                                fontWeight: FontWeight.w400  )),
                        Text('   2 days ago',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF000000),
                                fontSize: 17,
                                fontWeight: FontWeight.w400  )),
                      ],
                    )
                  ],
                )
            ),
          ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                width: 260,
                height: 60,
                margin: EdgeInsets.fromLTRB(20,0, 5, 0),
                padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    border: Border.all(
                        color: Colors.grey[400],
                        width: 2
                    )),
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text('Science',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Color(0xFF002255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold  )),
                      ],
                    ),

                    Row(
                      children: [
                        Text('Living things.  ',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF000000),

                                fontSize: 17,
                                fontWeight: FontWeight.w400  )),
                        Text('   5 days ago',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Color(0xFF000000),
                                fontSize: 17,
                                fontWeight: FontWeight.w400  )),
                      ],
                    )
                  ],
                )
            ),
            Container(
              height: 22,
              width: 22,
              margin: EdgeInsets.fromLTRB(0,5, 0, 0),
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: ImageIcon(AssetImage("Assets/add_new.png"), color: Colors.black,)),
                  color:Colors.white
             // color: Color(0xFF3A5A98),
            ),
            Text('New',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold  )),
          ]
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 125,
                  height: 25,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child:Text('Older Classes',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Color(0xFF332D2D),
                          fontSize: 20,
                          fontWeight: FontWeight.w700  )),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0)),
                      border: Border.all(
                          color: Colors.white,
                          width: 2
                      ))
              ),
              Column(
                children: [
                  Container(
                      width: 260,
                      height: 70,
                      margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          )),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Science',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Color(0xFF002255),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  )),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Non-living things.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400  )),
                              Text('1 month ago',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400  )),
                            ],
                          )
                        ],
                      ) 
                  ),
                  Container(
                      width: 260,
                      height: 70,
                      margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                      padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border: Border.all(
                              color: Colors.grey[400],
                              width: 2
                          )),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text('Science',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Color(0xFF002255),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  )),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Matter',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400  )),
                              Text('5 months ago',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Color(0xFF000000),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400  )),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )

            ],
          ),
        ],
      ),
    );
  }
}
