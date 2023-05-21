import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  List pages=[
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
          backgroundColor: Color(0xFFF3EFEF),
          height: 50,
          destinations: const [
            NavigationDestination(icon:Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "anasayfa"),
            NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_book_formula_statistics_filled),
                label: "istatistik"),
            NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_news_filled),
                label: "haber"),
            NavigationDestination(icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "profil"),
          ],
          selectedIndex:selectedIndex,
          onDestinationSelected: (value){
            setState(() {
              selectedIndex=value;
            });
          }
      ),
    );
  }
}
