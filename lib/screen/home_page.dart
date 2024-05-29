import 'package:flutter/material.dart';
import 'package:mobile_applications_final/screen/categories.dart';
import '../customwidgets/CustomCard.dart';

//AnaSayfayı tanımlayan class
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          'Mobile Application Development Course Project',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(//arkaplan dosyası ekleme
                image: AssetImage("assets/image/arkaplan.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'profile_picture',
                    child: Image.asset(//Hero animasyonu ile bir resim ekleme
                      "assets/image/profil.png",
                      width: 200,
                      height: 400,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoriesFoods(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      overlayColor: const Color.fromARGB(255, 76, 5, 0),
                    ),
                    child: const CustomCard(//Benim oluşturduğum özelleştirilmiş container
                      text: 'Food Categories',
                      fontsize: 18,
                      colori: Colors.red,
                      shadowi: Colors.redAccent,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CustomCard(
                    text: 'About Project',
                    fontsize: 34,
                    colori: Colors.amber,
                    shadowi: Colors.amberAccent,
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Column(
                      children: [
                        CustomCard(
                          text: 'Prepared: Sinan Uyğun',
                          fontsize: 18,
                          colori: Colors.amber,
                          shadowi: Colors.amberAccent,
                        ),
                        SizedBox(height: 10),
                        CustomCard(
                          text: 'Student No: 1030520914',
                          fontsize: 16,
                          colori: Colors.amber,
                          shadowi: Colors.amberAccent,
                        ),
                        SizedBox(height: 10),
                        CustomCard(
                          text: 'University: Erciyes University',
                          fontsize: 16,
                          colori: Colors.amber,
                          shadowi: Colors.amberAccent,
                        ),
                        SizedBox(height: 10),
                        CustomCard(
                          text: 'Course: Mobile Application',
                          fontsize: 16,
                          colori: Colors.amber,
                          shadowi: Colors.amberAccent,
                        ),
                        SizedBox(height: 10),
                        CustomCard(
                          text: 'Teacher: Fehim Köylü',
                          fontsize: 18,
                          colori: Colors.amber,
                          shadowi: Colors.amberAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
