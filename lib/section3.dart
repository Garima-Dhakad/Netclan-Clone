import 'package:assign/cardsforuniv.dart';
import 'package:assign/searchbar.dart';
import 'package:flutter/material.dart';

class Section3 extends StatefulWidget {
  const Section3({super.key});

  @override
  State<Section3> createState() => _Section3State();
}

class _Section3State extends State<Section3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Searchbar(),
            CardsU(
              name: "Starex University",
              dist: "Gurugram within 26 KM",
              imagelink:
                  'https://cdn.aglasem.com/college/college-images/starex-university-gurgaon.jpg',
            ),
            SizedBox(
              height: 15,
            ),
            CardsU(
              name: "NIT Kurukshetra",
              dist: "Kurukshetra within 240KM",
              imagelink:
                  "https://getmyuni.azureedge.net/college-images-test/national-institute-of-technology-nit-kurukshetra/cb4804009b75434a8a94a7866b271bca.jpeg",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 20, 59, 100),
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
