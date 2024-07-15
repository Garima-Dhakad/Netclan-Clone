import 'package:assign/section1.dart';
import 'package:assign/section2.dart';
import 'package:assign/section3.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              // height: 50,
              child: const TabBar(
                unselectedLabelColor: Color.fromARGB(255, 20, 59, 100),
                indicator: BoxDecoration(
                  color: Color.fromARGB(255, 20, 59, 100),
                ),
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text: "Personal",
                  ),
                  Tab(
                    text: "Business",
                  ),
                  Tab(
                    text: "Merchant",
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(children: [Section1(), Section2(), Section3()]),
            ),
          ],
        ),
      ),
    );
  }
}
