import 'package:flutter/material.dart';
import 'screen/home_page.dart';

void main() {
  runApp(const HomePages());
}

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Roboto",
      ), //ThemaData

      home: const HomePage(), //Scaffold
    ); //MaterialApp
  }
}
