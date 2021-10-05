import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Create_Class.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Services/class_service.dart';
import 'package:mobile_teacher_app/locator.dart';

import 'package:mobile_teacher_app/utils/size_config.dart';

class Home extends StatefulWidget {
  static const String id = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    final ClassService _classService = locator<ClassService>();

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
      body: Center(
        child: FutureBuilder(
          future: _classService.allClasses(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasError) {
              print('CLAZZES');
              return Text('Something went wrong');
            }
            if(snapshot.hasData) {
              print('CLASSES ${snapshot.hasData}');
              if(snapshot.data.length > 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:  SizeConfig.screenWidth,
                          height: 25,
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child:Text('Recent Classes',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Color(0xFF332D2D),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700  )),

                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, classroom.id);
                          },
                          child: Container(
                              width: 260,
                              height: 60,
                              margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                              padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
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
                                      Text('Energy',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(color: Color(0xFF000000),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400  )),

                                    ],
                                  )
                                ],
                              )
                          ),),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, CreateClass.id);
                      },
                      child:Container(
                        width: 260,
                        height: 60,
                        margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                        padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0)),
                            border: Border.all(
                                color: Colors.grey[400],
                                width: 2
                            )),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 61,
                                height: 61,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: ImageIcon(AssetImage("Assets/Add_new.png"), color: Colors.black,),
                                  // child: Image.asset("assets/icons/teacher.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                                ),
                              ),
                              // SizedBox(width:15),
                              Text(
                                  'Add a new class',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:20,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Roboto",
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ,

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
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

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Non-living things.',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(color: Color(0xFF000000),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400  )),
                                        /* Text('1 month ago',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400  )),*/
                                      ],
                                    )
                                  ],
                                )
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
                                        /*Text('5 months ago',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400  )),*/
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
                );
              } else {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, CreateClass.id);
                  },
                  child:Container(
                    width: 260,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(20,0, 5, 10),
                    padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        border: Border.all(
                            color: Colors.grey[400],
                            width: 2
                        )),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            width: 61,
                            height: 61,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: ImageIcon(AssetImage("Assets/Add_new.png"), color: Colors.black,),
                              // child: Image.asset("assets/icons/teacher.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                            ),
                          ),
                          // SizedBox(width:15),
                          Text(
                              'Add a new class',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize:20,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Roboto",
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

            }
            return CircularProgressIndicator(color: Colors.amber);
          },
        ),
      ),
    );
  }
}
