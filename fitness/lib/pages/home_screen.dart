import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/secenekler.dart';
import 'notification_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  String ad = "FATMA";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFFF4F9F9),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Hoşgeldin\n",
                              style: TextStyle(
                                  color: Color(0xFFADA4A5),
                                  fontSize: 20,
                                  height: 2.0)),
                          TextSpan(
                              text: "$ad",
                              style: TextStyle(
                                  color: Color(0xFF1D1617), fontSize: 25)),
                        ]),
                        maxLines: 3,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.start,
                      ),

                    ],
                  ),
                ),
                Expanded(child: Secenekler()),
              ],
            ),
          )),
    );
  }
}
/* gradient: LinearGradient (
                // colors for gradient
                colors: [
                  Color(0xFFE8EDFF),
                  Color(0xFFF2F8FC),
                ],
              ),*/
/*
AppBar(
toolbarHeight: size.height * .20,
backgroundColor: Color(0xFFF4F9F9),
elevation: 0,
flexibleSpace: Container(
decoration: BoxDecoration(
color: Color(0xFFF4F9F9),

shape: BoxShape.rectangle,
borderRadius: BorderRadius.only(
bottomRight: Radius.circular(50),
bottomLeft: Radius.circular(50),),
),
),
actions: [
SafeArea(
child: IconButton(
padding: EdgeInsets.only(right: 20, top: 10),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => NotificationScreen()));
},
icon: Icon(Icons.notifications_active_outlined),
color: Color(0xFF1D1617),
alignment: Alignment.topRight,
iconSize: 30,
),
)
],
title: RichText(
text: TextSpan(children: [
TextSpan(
text: "Hoşgeldin\n",
style: TextStyle(
color: Color(0xFFADA4A5), fontSize: 20, height: 2.0)),
TextSpan(
text: "$ad",
style: TextStyle(color: Color(0xFF1D1617), fontSize: 25)),
]),
maxLines: 3,
overflow: TextOverflow.clip,
textAlign: TextAlign.start,
),
),*/
