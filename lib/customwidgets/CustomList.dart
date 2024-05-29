import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final String imageurl;
  final String name;
  const CustomList({
    super.key,
    required this.imageurl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        shape: const RoundedRectangleBorder(),
        elevation: 5, 
        backgroundColor: Colors.amber,
        overlayColor: const Color.fromARGB(255, 99, 75, 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imageurl),
          Text(
            name,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
