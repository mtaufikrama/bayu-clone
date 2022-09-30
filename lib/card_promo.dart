// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types

import 'package:bayu/coba.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Card_Promo extends StatefulWidget {
  const Card_Promo({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  State<Card_Promo> createState() => _Card_PromoState();
}

class _Card_PromoState extends State<Card_Promo> {
  static var colors_card = [
    const Color.fromARGB(255, 255, 255, 255),
    const Color.fromARGB(255, 255, 255, 255),
    const Color.fromARGB(255, 221, 70, 70),
    const Color.fromARGB(255, 255, 255, 255),
    const Color.fromARGB(255, 255, 255, 255),
  ];

  static var foto_profil = [
    "images/vektor1.jpg",
    "images/vektor2.jpg",
    "images/vektor3.webp",
    "images/vektor4.jpg",
    "images/vektor5.webp",
  ];

  static var colors_text = [
    const Color.fromARGB(255, 63, 63, 63),
    const Color.fromARGB(255, 135, 52, 120),
    const Color.fromARGB(255, 34, 123, 218),
    const Color.fromARGB(255, 151, 53, 53),
    const Color.fromARGB(255, 91, 45, 45),
  ];

  final random = Random().nextInt(colors_card.length);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  foto_profil[random],
                  fit: BoxFit.contain,
                ),
              ),
              content: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colors_text[random],
                ),
              ),
            );
          },
        );
      },
      child: Card(
        color: colors_card[random],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        elevation: 5,
        child: SizedBox(
          height: 100,
          child: Center(
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 100,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      foto_profil[random],
                      fit: BoxFit.contain,
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NyobaGaes()));
                    },
                    child: Text(
                      ">",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
