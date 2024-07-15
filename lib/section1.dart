import 'package:assign/cards.dart';
import 'package:assign/searchbar.dart';
import 'package:flutter/material.dart';

class Section1 extends StatefulWidget {
  const Section1({super.key});

  @override
  State<Section1> createState() => _Section1State();
}

class _Section1State extends State<Section1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Searchbar(),
            Cards(
              name: "Suman",
              proff: "Rewari | Student",
              dist: "500-600 m",
              imagelink:
                  "https://th.bing.com/th/id/OIP.0-O5YuH0qfl1JfqclEQO4QHaHa?rs=1&pid=ImgDetMain",
              hobbies: "Coffee | Business | Friendship",
            ),
            SizedBox(
              height: 15,
            ),
            Cards(
              name: "Rakesh",
              proff: "Rewari | Business",
              dist: "700-800 m",
              imagelink:
                  'https://th.bing.com/th/id/OIP.AbGafkazjc_S1pZPh0B9cQHaIm?w=165&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7',
              hobbies: "Coffee | Business | Hobbies",
            ),
            SizedBox(
              height: 15,
            ),
            Cards(
              name: "Appu",
              proff: "Rewari | Student",
              dist: "1000-1200 m",
              imagelink:
                  'https://th.bing.com/th/id/OIP.0CZd1ESLnyWIHdO38nyJDAAAAA?rs=1&pid=ImgDetMain',
              hobbies: "Coffee | Movies | Friendship",
            ),
            SizedBox(
              height: 15,
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
