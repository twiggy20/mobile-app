import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_teacher_app/utils/size_config.dart';
class Awards extends StatefulWidget {
  static const String id = "awards";

  @override
  _AwardsState createState() => _AwardsState();
}

class _AwardsState extends State<Awards> {
  @override
  Widget build(BuildContext context) {
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
            'Rewards',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF303D50),
                fontSize: 18,
                fontWeight: FontWeight.w900
            ),
        ),
        centerTitle: true,
        actions: [
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: (){},
            child: Container(
              child: Image.asset("assets/icons/Group (7).png",width:18,height:18,fit: BoxFit.contain,),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        padding: EdgeInsets.only(left:26,right: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Center(
              child: Text(
                'You will get more points when\nyou make your teacher very\nhappy with you. ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFF2B3A2C),
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              ),
            ),
            SizedBox(height:150,),
            Text(
              "Points overview",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF303D50),
                  fontSize: 18,
                  fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/Group (6).png",width:43.82,height:47.39 ,fit: BoxFit.contain,),
                  Text(
                    "Creative",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF622A63),
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
