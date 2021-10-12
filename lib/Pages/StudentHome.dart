import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_teacher_app/Pages/student-pages/Rewards.dart';
import 'package:mobile_teacher_app/Pages/student-pages/classes/classes.dart';
import 'package:mobile_teacher_app/Pages/student-pages/Join_Class_ID.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class StudentHome extends StatefulWidget {
  static const String id = "StudentHome";

  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: () {},
            child: Container(
              //  child: Image.asset("assets/icons/options.png ",width:36,height:26,fit: BoxFit.contain,),
            ),
          ),
        ),
        title: Text(
          'Welcome',
          textAlign: TextAlign.center,
          style: TextStyle(
            // color: Color(0xFF303D50),
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {},
            child: Container(
              child: Image.asset(
                "assets/icons/Group (7).png",
                width: 18,
                height: 18,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Awards.id);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF2C94C),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: SizeConfig.screenWidth,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Check for rewards here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 24.56,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'You have no rewards',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Recent classes",
                style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Classes.id);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: Color(0xFF27AE60),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            "assets/icons/profile.png",
                            fit: BoxFit.contain,
                            width: 34.64,
                            height: 39.87,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mr John',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF303D50),
                                    fontSize: 15.69,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Science..1 hour ago',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 12.76,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, JoinClassID.id);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            "assets/icons/add_new.png",
                            fit: BoxFit.contain,
                            width: 34.64,
                            height: 39.87,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            'Add new class',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Class history",
                style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              buildContainer("You have no class history yet"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String text) {
    return Container(
      width: 175,
      height: 129,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset.zero,
            )
          ]),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF000000),
              fontSize: 18,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
