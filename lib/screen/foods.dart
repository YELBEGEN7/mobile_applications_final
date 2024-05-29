import 'package:flutter/material.dart';
import 'package:mobile_applications_final/customwidgets/CustomCard.dart';
import 'package:mobile_applications_final/models/foodsmodel.dart';
import 'package:mobile_applications_final/services/foodservice.dart';

//Yemekleri gösteren sayfaya ait class
class Foods extends StatefulWidget {
  final String id;
  const Foods({super.key, required this.id});

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  late Future<List<FoodsModel>> _foods;

  @override
  void initState() {
    super.initState();
    _foods = _getFoodsData();
  }

  Future<List<FoodsModel>> _getFoodsData() async {//verileri getiriyor
    return await FoodsService().getFoods(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/arkaplan.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: FutureBuilder<List<FoodsModel>>(//verinin gelmesini beklemek için bir bekleme ve loading süreci sağlar
              future: _foods,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No categories found');
                } else {
                  final food = snapshot.data![0];
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Image.network(
                          food.iconUrl,
                          width: 400,
                          height: 200,
                        ),
                        const SizedBox(height: 10),
                        CustomCard(
                          text: food.name,
                          fontsize: 16,
                          colori: Colors.purple,
                          shadowi: Colors.purpleAccent,
                        ),

                        const SizedBox(height: 10),
                        Text(food.instructions,style: const TextStyle(color: Colors.red,),),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCard(
                              text: 'Ingredients',
                              fontsize: 16,
                              colori: Colors.purple,
                              shadowi: Colors.purpleAccent,
                            ),
                            CustomCard(
                              text: 'Measures',
                              fontsize: 16,
                              colori: Colors.purple,
                              shadowi: Colors.purpleAccent,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: food.ingredients.length,
                                itemBuilder: (context, index) {
                                  final ingredient = food.ingredients[index];
                                  return CustomCard(
                                    text: ingredient,
                                    fontsize: 16,
                                    colori: Colors.amberAccent,
                                    shadowi: const Color.fromARGB(255, 251, 218, 102),
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: food.measures.length,
                                itemBuilder: (context, index) {
                                  final measure = food.measures[index];
                                  // ignore: unnecessary_null_comparison
                                  
                                  return CustomCard(
                                    text: measure,
                                    fontsize: 16,
                                    colori: Colors.amberAccent,
                                    shadowi: const Color.fromARGB(255, 251, 218, 102),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
