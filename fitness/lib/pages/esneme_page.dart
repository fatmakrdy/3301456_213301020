import 'package:fitness/widgets/sport_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Esneme extends StatelessWidget {
  Esneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: SportPage(size: size, sportName: "Esneme Egzersizleri",name: "esneme",dakika: 50,egzersizSayisi: 8),
      ),
    );
  }
}



