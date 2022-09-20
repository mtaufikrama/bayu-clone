// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Menu_TopUp extends StatelessWidget {
  const Menu_TopUp({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$text");
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 7),
          Icon(icon),
          SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
