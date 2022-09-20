// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'dart:math';

class Card_Promo extends StatefulWidget {
  const Card_Promo({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  State<Card_Promo> createState() => _Card_PromoState();
}

class _Card_PromoState extends State<Card_Promo> {
  List<Color> colors = [
    Color.fromARGB(255, 183, 223, 255),
    Color.fromARGB(255, 186, 255, 188),
    Color.fromARGB(255, 255, 195, 195),
    Color.fromARGB(255, 255, 248, 181)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colors[Random().nextInt(colors.length)],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      elevation: 5,
      child: SizedBox(
        height: 100,
        child: Center(
          child: ListTile(
            leading: Image.network(
              widget.image,
              fit: BoxFit.cover,
              height: 80,
              width: 80,
              alignment: Alignment.center,
            ),
            title: Text(
              widget.title,
            ),
            trailing: Text(
              ">",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
