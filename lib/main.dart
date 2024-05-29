import 'package:flutter/material.dart';
import 'screen/home_page.dart';

void main() {
  runApp(const HomePages());
}

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Roboto",
      ), //ThemaData
      home: HomePage(), //Scaffold
    ); //MaterialApp
  }
}

