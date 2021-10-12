import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/models/Student.dart';
import 'package:mobile_teacher_app/services/class_service.dart';

class StudentLookUp extends StatefulWidget {

  Function callback;

  StudentLookUp({this.callback});

  @override
  _StudentLookUpState createState() => _StudentLookUpState();
}

class _StudentLookUpState extends State<StudentLookUp> {

  ClassService _classService = ClassService();

  @override
  Widget build(BuildContext context) {
    return Container(child: FutureBuilder(
        future: _classService.allStudents(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            if (snapshot.data.length == 0) {
              return Center(
                child: Text('No Data'),
              );
            } else {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Student _account = snapshot.data[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      this.widget.callback(_account);
                      // Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          '${_account?.firstName} - ${_account.surname}',
                          style:
                          TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(_account?.level),
                      ),
// onTap: () => _selectItem('Cooling'),
                    ),
                  );
                },
              );
            }
          }
          return Container();
        }),);
  }
}
