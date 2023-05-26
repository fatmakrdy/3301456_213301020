import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/esneme_page.dart';
import '../pages/meditasyon_page.dart';
import '../pages/pilates_pages.dart';
import '../pages/yoga_page.dart';

class Secenekler extends StatelessWidget {
  Secenekler({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
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
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
           Radius.circular(50),
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