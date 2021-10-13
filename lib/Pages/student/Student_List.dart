import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/student/StudentLookUp.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/class_service.dart';

import '../../locator.dart';

class StudentList extends StatefulWidget {

  final String courseId;


  StudentList({this.courseId});

  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {

  ClassService _classService = ClassService();
  bool loading = false;


  @override
  void initState() {
    print('PRINTER::: ${widget.courseId}');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
            future: _classService.getClassStudents(widget.courseId),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }
              if (snapshot.hasData) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton.icon(onPressed: () => {_onButtonPressed()}, label: Text('Add Student'), icon: Icon(Icons.add), style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black12)),),
                      SizedBox(height: 15.0,),
                      Expanded(
                        child: loading ? Center(child: CircularProgressIndicator()) : GridView.builder(
                          itemCount: snapshot.data.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape ? 4: 3,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            // childAspectRatio: (2 / 1),
                          ),
                          itemBuilder: (context,index,) {
                            Student student = snapshot.data[index];
                            return GestureDetector(
                              onTap:(){
                                // Navigator.of(context).pushNamed(RouteName.GridViewCustom);
                              },
                              child:Container(
                                color: RandomColorModel().getColor(),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                                  child: Column(
                                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                    children: [
                                     student?.gender == 'MALE' ? Image.asset("Assets/male_student.png",width: 28.86,height: 37,fit: BoxFit.contain,) : Image.asset("Assets/female_student.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                                     Text(student?.firstName.toUpperCase() ?? 'N/A', style: TextStyle(fontSize: 18, color: Colors.black),
                                         textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }


  _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Select Student',
                      style: TextStyle(
                          // color: ColorUtils.PRIMARY_COLOR,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                        child: StudentLookUp(
                          callback: callbackStudent,
                        )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  )),
            ),
          );
        });
  }

  callbackStudent(value) async {
    print('VALUE ${value}');
    setState(() {
      loading = true;
    });
    var result = await _classService.addStudent(widget.courseId, value);
    if (result != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Student Added...')),
      );
      setState(() {
        loading = false;
      });
    }
  }

}

class RandomColorModel {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(300), random.nextInt(300),
        random.nextInt(300), random.nextInt(300));
  }
}
