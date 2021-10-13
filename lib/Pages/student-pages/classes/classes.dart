import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Lesson/Lesson_Item.dart';
import 'package:mobile_teacher_app/models/Lesson.dart';
import 'package:mobile_teacher_app/models/app_class.dart';
import 'package:mobile_teacher_app/services/class_service.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';



class Classes extends StatefulWidget {
  static const String id = "Classes";
  @override
  _ClassesState createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {

  AppClass _class;
  final ClassService _classService = ClassService();


  bool isSelectedLesson = true;
  @override
  Widget build(BuildContext context) {

    _class = ModalRoute.of(context).settings.arguments as AppClass;
    print('CLAZZ ${_class.name}');

    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: (){},
            child: Container(
              child: Image.asset("assets/icons/Vector.png",width:10,height:30,fit: BoxFit.contain,),
            ),
          ),
        ),
        title:Text(
          _class.name ?? 'N/A',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF303D50),
              fontSize: 18,
              fontWeight: FontWeight.w900
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap:(){
                      setState(() {
                        isSelectedLesson = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Lesson',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF27722F),
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(height: 5,),
                        isSelectedLesson == true ?
                        Container(
                          height: 8,
                          width: 212.44,
                          color: Color(0xFF27722F),
                        ):Container(
                          height: 8,
                          width: 212.44,
                          color: Color(0xFFE5E5E5),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        isSelectedLesson = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Activity',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFFC8C23E),
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(height: 5,),
                        isSelectedLesson == false ?
                        Container(
                          height: 8,
                          width: 212.44,
                          color: Color(0xFFC8C23E),
                        ):Container(
                          height: 8,
                          width: 212.44,
                          color: Color(0xFFF0F0F0),
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      isSelectedLesson == true ?
                          classRoom() : act()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget classRoom(){
    return Padding(
      padding: EdgeInsets.only(left: 24,right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: FutureBuilder(
              future: _classService.retrieveLessons(_class.id),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong');
                }
                if (snapshot.hasData) {
                  if (snapshot.data.length > 0) {
                    return
                      Container(
                        // height: MediaQuery.of(context).size.height * 0.4,
                        child: ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {

                              Lesson lesson = snapshot.data[index];
                              return Container(
                                child: SizedBox(
                                  // height: MediaQuery.of(context).size.height * 0.15,
                                  child: LessonItem(lesson: lesson,),
                                ),
                              );
                            }),
                      );
                  } else {
                    return Center(
                      child: Text('No lessons have been added'),
                    );
                  }
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          ),
          Text(
              'Energy',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFFBE2020),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(height: 15,),
          Container(
            width: 326,
            height: 248.96,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset.zero,
                  )
                ]
            ),
            child: Center(
              child: Text(
                "Lesson materials\non energy (Video/picture)",
                style: TextStyle(

                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text(
              '1 hour ago',
              // textAlign: TextAlign.right,
              style: TextStyle(color: Colors.black54,
                  fontSize: 12,
                  fontWeight: FontWeight.w200  )
          ),
          SizedBox(height: 50,),
          Text('Older Lesson',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: buildContainer("Living things","2 months ago"),
              ),
              SizedBox(width: 27,),
              Expanded(
                child: buildContainer("Water","3 months ago"),
              )
            ],
          )
        ],
      ),
    );
  }
  Widget act(){
    return Padding(
      padding: EdgeInsets.only(left: 24,right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Energy',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF303D50),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(height: 15,),
          Container(
            width: 326,
            height: 248.96,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset.zero,
                  )
                ]
            ),
            child: Center(
              child: Text(
                "Class Work/ Assignment here",
                style: TextStyle(

                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
        ],
      ),
    );
  }

  Widget buildContainer(String text,String time){
    return Container(
      width:175,
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
          ]
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize:18,
                  fontWeight: FontWeight.w200
              ),
            ),
            SizedBox(height: 10,),
            Text(
              time,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize:12,
                  fontWeight: FontWeight.w200
              ),
            ),
          ],
        ),
      ),
    );
  }
}


