import 'package:flutter/material.dart';
import '../Class/Create_Class.dart';
import 'package:mobile_teacher_app/Pages/Classroom.dart';
import 'package:mobile_teacher_app/Services/class_service.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/app_class.dart';

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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: _classService.allClasses(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }
              if (snapshot.hasData) {
                if (snapshot.data.length > 0) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            width: SizeConfig.screenWidth,
                            height: 25,
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text('Recent Classes',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF332D2D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: ListView.builder(
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, index) {

                                  AppClass appClass = snapshot.data[index];
                                  return InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, ClassRoom.id, arguments: appClass);
                                    },
                                    child: Container(
                                        width: 260,
                                        height: 60,
                                        margin: EdgeInsets.fromLTRB(20, 0, 5, 10),
                                        padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(10.0),
                                                topLeft: Radius.circular(10.0),
                                                bottomRight:
                                                    Radius.circular(10.0),
                                                bottomLeft:
                                                    Radius.circular(10.0)),
                                            border: Border.all(
                                                color: Colors.grey[400],
                                                width: 2)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(appClass.name ?? 'N/A',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        color: Color(0xFF002255),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ],
                                        )),
                                  );
                                }),
                          ),
                        ],
                      ),
                      //SizedBox(height: 16.0,),
                      SizedBox(
                      width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, CreateClass.id);
                          },
                          child: Container(
                            width: 260,
                            height: 60,
                            margin: EdgeInsets.fromLTRB(20, 0, 5, 10),
                            padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                border: Border.all(
                                    color: Colors.grey[400], width: 2)),
                            child: Row(
                              children: [
                                Container(
                                  width: 61,
                                  height: 61,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                 child: Center(
                                    child: Icon(Icons.add, color: Colors.grey),
                                  // child: ImageIcon(AssetImage("Assets/Add_new.png"), color: Colors.black,),
                                  ),
                                ),
                                // SizedBox(width:15),
                                Text('Add a new class',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "Roboto",
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('Older Classes',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF332D2D),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              decoration: BoxDecoration(
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0)),
                                  border: Border.all(
                                      color: Colors.white, width: 2))),
                          Column(
                            children: [
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('No class history',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Color(0xFF002255),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                     /* Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Non-living things.',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400)),
                                          /* Text('1 month ago',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Color(0xFF000000),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400  )),*/
                                        ],
                                      )*/
                                    ],
                                  )),
                             /* Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white30,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0)),
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Science',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Color(0xFF002255),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Matter',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400)),
                                          /*Text('5 months ago',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Color(0xFF000000),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400  )),*/
                                        ],
                                      )
                                    ],
                                  )),*/
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
                    child: Container(
                      width: 260,
                      height: 60,
                      margin: EdgeInsets.fromLTRB(20, 0, 5, 10),
                      padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          border:
                              Border.all(color: Colors.grey[400], width: 2)),
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
                                child: ImageIcon(
                                  AssetImage("assets/Add_new.png"),
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            // SizedBox(width:15),
                            Text('Add a new class',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Roboto",
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
             return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
