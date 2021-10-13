import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:mobile_teacher_app/Pages/student-pages/Rewards.dart';
import 'package:mobile_teacher_app/Pages/student-pages/classes/classes.dart';
import 'package:mobile_teacher_app/Pages/student-pages/Join_Class_ID.dart';
import 'package:mobile_teacher_app/locator.dart';
import 'package:mobile_teacher_app/models/User.dart';
import 'package:mobile_teacher_app/models/app_class.dart';
import 'package:mobile_teacher_app/services/class_service.dart';
import 'package:mobile_teacher_app/services/student_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class StudentHome extends StatefulWidget {
  static const String id = "StudentHome";

  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {

  final ClassService classService = ClassService();

  @override
  void initState() {
    // TODO: implement initState
    loadClasses();
    super.initState();
  }


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
            child: Icon(Icons.notifications),
          )
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
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
                SingleChildScrollView(
                  child: FutureBuilder(
                    future: classService.getStudentClasses(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }
                    if (snapshot.hasData) {
                      if (snapshot.data.length > 0) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            AppClass appClass = snapshot.data[index];
                            AppUser creator = AppUser.fromData(appClass.creator);
                                  return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Classes.id, arguments: appClass);
                              },
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
                                      Icon(Icons.person),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                             creator.firstName ?? 'N/A',
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
                                            '${appClass.name}  ..1 hour ago',
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
                            );
                          },),
                        );
                      } else {
                        return Center(child: Text('You have not been added to any class'),);
                      }
                    }
                    return Center(child: CircularProgressIndicator());
                  }),
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
                            Icon(Icons.add),
                            /*Image.asset(
                              "assets/icons/add_new.png",
                              fit: BoxFit.contain,
                              width: 34.64,
                              height: 39.87,
                            ),*/
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

  void loadClasses() async {
    await classService.getStudentClasses();
  }
}
