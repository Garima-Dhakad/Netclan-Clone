import 'package:assign/drawer.dart';
import 'package:assign/refine.dart';
import 'package:assign/explore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _ExploreState();
}

class _ExploreState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = <Widget>[
      Explore(),
      Text("Network Screen"),
      Text("Chat Screen"),
      Text("Contact Screen"),
      Text("Group Screen"),
    ];

    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const DrawerScreen()),
        //     );
        //   },
        // ),
        title: const Text(
          "Howdy Garima Dhakad !!",
          style: TextStyle(fontSize: 16),
        ),
        actions: [
          Column(
            children: [
              SizedBox(
                height: 35,
                child: IconButton(
                  tooltip: 'Refine',
                  icon: const Icon(
                    Icons.linear_scale_rounded,
                  ),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Refine()),
                    );
                  },
                ),
              ),
              const Text(
                "Refine",
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color.fromARGB(245, 134, 156, 178),
        selectedItemColor: const Color.fromARGB(255, 20, 59, 100),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cached_outlined),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_cal_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Group',
          ),
        ],
      ),
    );
  }
}
