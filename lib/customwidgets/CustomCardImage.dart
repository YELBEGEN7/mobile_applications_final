import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String text;
  final String image;
  final double fontsize;
  final Color colori;
  final Color shadowi;
  const CustomCardImage({
    super.key, 
    required this.text,
    required this.fontsize,
    required this.colori,
    required this.shadowi, required this.image
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
      child: Row(children:[
        Image.network(image,width: 200,height: 200,),
        Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: fontsize),
      ),])
    );
  }
}