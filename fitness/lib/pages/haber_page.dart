import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(HaberPage());
}
class HaberPage extends StatelessWidget {
  const HaberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HABERLER'),
          centerTitle: true,
          backgroundColor: Color(0xFFF3EFEF),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              height: 80,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Alt Başlık',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Geniş AppBar Örneği',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),),
    );
  }
}
