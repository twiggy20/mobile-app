import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/Pages/Status.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';

class identity extends StatefulWidget {
  static const String id = "Identity";

  @override
  _identityState createState() => _identityState();
}

class _identityState extends State<identity> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 34,right: 34),
              width: SizeConfig.screenWidth,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    SizedBox(height: 60,),
                    Text(
                      'Who are you ?',
                      style: TextStyle(
                        color: Color(0xFF002255),
                        fontSize: 46.65,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Roboto",
                      ),
                    ),
                    SizedBox(height: 95,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, status.id);
                      },
                      child:Container(
                        padding: EdgeInsets.only(top: 12,bottom: 12,left:17),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Color(0xFFBEBEBE),
                                width: 1
                            )
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 61,
                                height: 61,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3EC8AF),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                //  child: ImageIcon(AssetImage("Assets/teacher.png"), color: Colors.black,),
                                ),
                              ),
                              SizedBox(width:28),
                              Text(
                                  'I am a teacher',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF002255),
                                    fontSize:24.56,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ,
                    SizedBox(height: 33,),
                    GestureDetector(
                      onTap: () {
                      },
                      child:Container(
                        padding: EdgeInsets.only(top: 12,bottom: 12,left:17),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: Color(0xFFBEBEBE),
                                width: 1
                            )
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                width: 61,
                                height: 61,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFC8C23E),
                                ),
                                child: Center(
                                 // child: Image.asset("assets/icons/student_icon.png",width: 28.86,height: 37,fit: BoxFit.contain,),
                                ),
                              ),
                              SizedBox(width:28),
                              Text(
                                  'I am a student',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF002255),
                                    fontSize:24.56,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]
              ),
            )
        )
    );
  }
}

