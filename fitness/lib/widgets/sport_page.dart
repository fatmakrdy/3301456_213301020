import 'package:fitness/pages/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SportPage extends StatelessWidget {
  const SportPage({
    super.key,
    required this.size,
    required this.sportName,
    required this.name,
    required this.dakika,
    required this.egzersizSayisi,
  });

  final Size size;
  final String sportName;
  final String name;
  final int dakika;
  final int egzersizSayisi;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF4F9F9),
        body: Column(
          children: [
            Center(
              child: Container(
                color: Color(0xFFF4F9F9),
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: SafeArea(
                        child: Text(
                          sportName,
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image(
                        height: 100,
                        image: AssetImage(
                          "assets/images/${name}.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      buildRow(),
                      SizedBox(height: 10),
                      buildRow(),
                      SizedBox(height: 10),
                      buildRow(),
                      SizedBox(height: 10),
                      buildRow(),
                      SizedBox(height: 10),
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

  Row buildRow() {
    return Row(
      children: [
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {},
            child: Container(
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
