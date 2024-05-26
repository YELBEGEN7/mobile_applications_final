import 'package:flutter/material.dart';
import 'package:mobile_applications_final/screen/screen2.dart';

import '../custom_card.dart';

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
        ), //Text
        centerTitle: true,
        backgroundColor: Colors.amber,
      ), //Appbar

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/arkaplan.jpg"),
                fit: BoxFit.cover,
              ), //DecorationImage
            ), //BoxDecoration
          ), //Container
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListFramework1(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: const CustomCard(
                            text: 'Screen 2 Geçiş',
                            fontsize: 18,
                            colori: Colors.red,
                            shadowi: Colors.redAccent,
                          )),
                      Image.asset(
                        "assets/image/profil.png",
                        width: 200,
                        height: 400,
                        fit: BoxFit.contain,
                      ), //Image.asset

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListFramework1(),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: const CustomCard(
                            text: 'Screen 2 Geçiş',
                            fontsize: 18,
                            colori: Colors.red,
                            shadowi: Colors.redAccent,
                          )),
                    ],
                  ),
                ),
                const CustomCard(
                  text: 'About Project',
                  fontsize: 34,
                  colori: Colors.amber,
                  shadowi: Colors.amberAccent,
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomCard(
                        text: 'Prepared: Sinan Uyğun',
                        fontsize: 18,
                        colori: Colors.amber,
                        shadowi: Colors.amberAccent,
                      ),
                      CustomCard(
                        text: 'Student No: 1030520914',
                        fontsize: 16,
                        colori: Colors.amber,
                        shadowi: Colors.amberAccent,
                      )
                    ],
                  ),
                ),
                const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomCard(
                        text: 'Univercity: Erciyes Univercity',
                        fontsize: 16,
                        colori: Colors.amber,
                        shadowi: Colors.amberAccent,
                      ),
                      CustomCard(
                        text: 'Course: Mobile Application',
                        fontsize: 16,
                        colori: Colors.amber,
                        shadowi: Colors.amberAccent,
                      )
                    ],
                  ),
                ),
                const CustomCard(
                  text: 'Teacher: Fehim Köylü',
                  fontsize: 18,
                  colori: Colors.amber,
                  shadowi: Colors.amberAccent,
                )
              ],
            ), //Column
          ), //Center
        ],
      ), //Stack
    );
  }
}
