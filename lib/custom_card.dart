
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color colori;
  final Color shadowi;
  const CustomCard({
    super.key, 
    required this.text,
    required this.fontsize,
    required this.colori,
    required this.shadowi
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 75,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colori,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black),
          boxShadow:[
            BoxShadow(
                color: shadowi,
                blurRadius: 25,
                spreadRadius: 2,
                offset: const Offset(0, 2))
          ]),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: fontsize),
      ),
    );
  }
}