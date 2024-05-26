import 'package:flutter/material.dart';

class ListFramework1 extends StatelessWidget {
  const ListFramework1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) => const ListTile(
        title: Text('List'),
        subtitle: Text('About'),
        trailing: Icon(Icons.chevron_right),

      ),
    ));
  }
}
