import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meditasyon extends StatelessWidget {
  Meditasyon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TopSection(),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(

          margin: EdgeInsets.only(top: 50),
          width: double.maxFinite,
          height: size.height * .30,
          decoration: BoxDecoration(
            color: Color(0xFFD6DADA),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            image: DecorationImage(
                image: AssetImage("assets/images/meditasyon.png"),
                alignment: Alignment.centerLeft,
                fit: BoxFit.fitHeight),
          ),
          child:
          Text(
            "Meditasyon",
            style:TextStyle(
                color: Colors.blueGrey,fontSize: 30,fontWeight: FontWeight.w400),
          ),
        ),

      ],
    );
  }
}

