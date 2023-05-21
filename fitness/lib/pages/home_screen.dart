import 'package:fitness/pages/diyet_önerisi_page.dart';
import 'package:fitness/pages/esneme_page.dart';
import 'package:fitness/pages/meditasyon_page.dart';
import 'package:fitness/pages/pilates_pages.dart';
import 'package:fitness/pages/yoga_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: size.height * .20,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 1),
                ),
              ],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
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
        ),
        body: Secenekler(),
      ),
    );
  }
}

class Secenekler extends StatelessWidget {
  Secenekler({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildSportSection(
              context, DiyetOnerisi(), "Diyet Önerisi", "diyet_onerisi"),
          Gap(30),
          buildSportSection(context, Yoga(), "Yoga", "yoga"),
          Gap(30),
          buildSportSection(context, Meditasyon(), "meditasyon", "meditasyon"),
          Gap(30),
          buildSportSection(context, Pilates(), "Pilates", "pilates"),
          Gap(30),
          buildSportSection(context, Esneme(), "Esneme", "esneme"),
          Gap(30),
        ],
      ),
    );
  }

  TextButton buildSportSection(
      BuildContext context, Widget sportScreen, String sportName, String name) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sportScreen));
      },
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFF7F8F8),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/$name.png'),
            Text(sportName, style: GoogleFonts.abhayaLibre(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
