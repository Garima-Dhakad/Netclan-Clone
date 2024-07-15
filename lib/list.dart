import 'package:flutter/material.dart';

class ListT extends StatelessWidget {
  final String text;
  final VoidCallback? callBack;
  final IconData icons;

  const ListT({
    super.key,
    required this.text,
    required this.icons,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 20, 59, 100),
        ),
      ),
      leading: Icon(
        icons,
        size: 25,
        color: const Color.fromARGB(255, 20, 59, 100),
      ),
    );
  }
}
