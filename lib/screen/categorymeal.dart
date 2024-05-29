import 'package:flutter/material.dart';
import 'package:mobile_applications_final/models/categorymealmodel.dart';
import 'package:mobile_applications_final/services/catagorymealservice.dart';

class CategoryMeal extends StatefulWidget {
  final String name;
  const CategoryMeal({super.key, required this.name});

  @override
  State<CategoryMeal> createState() => _CategoryMealState();
}

class _CategoryMealState extends State<CategoryMeal> {
  Future<List<Categorymealmodel>> _categorymealFuture = Future.value([]);

  @override
  void initState() {
    super.initState();
    _categorymealFuture = _getcategorymeal();
  }

  Future<List<Categorymealmodel>> _getcategorymeal() async {
    return await CategoryMealService().getCategorymeal(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: FutureBuilder<List<Categorymealmodel>>(
          future: _categorymealFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('No meals found');
            } else {
              // ignore: no_leading_underscores_for_local_identifiers
              final _categorymeal = snapshot.data!;
              return ListView.builder(
                itemCount: _categorymeal.length,
                itemBuilder: (context, index) {
                  final Categorymealmodel categoriesmeal = _categorymeal[index];
                  return ElevatedButton(
                    onPressed: () {},
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
                          categoriesmeal.iconurl,
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
                              categoriesmeal.name,
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
