import 'package:assign/cardsforbusiness.dart';
import 'package:assign/searchbar.dart';
import 'package:flutter/material.dart';

class Section2 extends StatefulWidget {
  const Section2({super.key});

  @override
  State<Section2> createState() => _Section2State();
}

class _Section2State extends State<Section2> {
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
            CardsB(
              name: "Arpita",
              dist: "500-600 m",
              imagelink:
                  "https://th.bing.com/th/id/OIP.xpAhet-4EWM8QDvYuQAxiAAAAA?pid=ImgDet&w=166&h=199&c=7&dpr=1.3",
            ),
            SizedBox(
              height: 15,
            ),
            CardsB(
              name: "Yash",
              dist: "700-800 m",
              imagelink:
                  'https://th.bing.com/th/id/OIP.audMX4ZGbvT2_GJTx2c4GgHaHw?rs=1&pid=ImgDetMain',
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
