import 'package:flutter/material.dart';
import 'package:mobile_applications_final/models/categorymodel.dart';
import 'package:mobile_applications_final/screen/categorymeal.dart';
import 'package:mobile_applications_final/services/categoryservices.dart';

class CategoriesFoods extends StatefulWidget {
  const CategoriesFoods({super.key});

  @override
  State<CategoriesFoods> createState() => _CategoriesFoodState();
}

class _CategoriesFoodState extends State<CategoriesFoods> {
  // ignore: unused_field
  List<CategoryModel> _categories = [];

  @override
  void initState() {
    _getCategoryData();
    super.initState();
  }

    // ignore: unused_element
  void _getCategoryData() async {
    _categories = await CategoryService().getCategories();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          final CategoryModel category = _categories[index];
          return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
         MaterialPageRoute(builder:
          (context)=> CategoryMeal(name:category.name)
          )
         );
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
          Image.network(category.iconurl),
          Text(
            category.name,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    }
    )
    )
    );
    }
}