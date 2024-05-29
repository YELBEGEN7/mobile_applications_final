import 'dart:async';
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
  late Future<List<CategoryModel>> _categories;

  @override
  void initState() {
    super.initState();
    _categories = _getCategoryData();
  }

  Future<List<CategoryModel>> _getCategoryData() async {
    return await CategoryService().getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category'),
      ),
      body: Center(
        child: FutureBuilder<List<CategoryModel>>(
          future: _categories,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('No categories found');
            } else {
              final categories = snapshot.data!;
              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryMeal(name: category.name),
                        ),
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
                        Image.network(
                          category.iconurl,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10), // Boşluk eklemek için
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              category.name,
                              style: const TextStyle(
                                fontSize: 16, 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
