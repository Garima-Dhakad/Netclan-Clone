import 'package:flutter/material.dart';

class CardsU extends StatelessWidget {
  final String name;

  final String dist;
  final String imagelink;

  const CardsU({
    super.key,
    required this.name,
    required this.dist,
    required this.imagelink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
      elevation: 1.0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        height: 200,
        width: 300,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(imagelink),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      width: 150,
                      height: 20,
                      alignment: Alignment.topRight,
                      child: RawMaterialButton(
                        onPressed: () {},
                        child: const Text(
                          "+ INVITE",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 20, 59, 100)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 20, 59, 100)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      dist,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 20, 59, 100)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Icon(Icons.call,
                            color: Color.fromARGB(255, 20, 59, 100)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 20, 59, 100),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          color: Color.fromARGB(255, 20, 59, 100),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '''Hi community! I am open to new
  connections ''',
                      style: TextStyle(color: Color.fromARGB(255, 20, 59, 100)),
                      softWrap: true,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
