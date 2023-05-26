import 'package:fitness/widgets/sport_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Yoga extends StatelessWidget {
  Yoga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SportPage(size: size, sportName: "Yoga Egzersizleri",name: "yoga",dakika: 50,egzersizSayisi: 8),
      ),
    );
  }
}



