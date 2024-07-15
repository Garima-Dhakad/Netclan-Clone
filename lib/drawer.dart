import 'package:assign/list.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  get drawerMenuListname => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 300,
        child: Drawer(
          child: Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  // margin: const EdgeInsets.only(
                  //     bottom: 10, left: 10, right: 10, top: 20),
                  // height: 150,
                  child: Image.network(
                    'https://wallup.net/wp-content/uploads/2016/01/227916-low_poly-abstract-blue-digital_art-artwork-geometry.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const ListT(
                  text: 'My Profile',
                  icons: Icons.person,
                ),
                const ListT(
                  text: 'My Network',
                  icons: Icons.groups_2,
                ),
                const ListT(
                  text: 'Switch to Business',
                  icons: Icons.business_center_outlined,
                ),
                const ListT(
                  text: 'Switch to Merchant',
                  icons: Icons.shopping_cart,
                ),
                const ListT(
                  text: 'Dating',
                  icons: Icons.people,
                ),
                const ListT(
                  text: 'Matrimony',
                  icons: Icons.circle_outlined,
                ),
                const ListT(
                  text: 'Buy-Sell-Rent',
                  icons: Icons.shopping_bag_outlined,
                ),
                const ListT(
                  text: 'Jobs',
                  icons: Icons.shopping_bag,
                ),
                const ListT(
                  text: 'Business Cards',
                  icons: Icons.credit_card_sharp,
                ),
                const ListT(
                  text: 'Netclan Groups',
                  icons: Icons.group,
                ),
                const ListT(
                  text: 'Notes',
                  icons: Icons.edit_calendar_outlined,
                ),
                const ListT(
                  text: 'Live Locations',
                  icons: Icons.location_on,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
