// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'dart:math';

class BlankPage extends StatefulWidget {
  const BlankPage({Key? key}) : super(key: key);

  @override
  State<BlankPage> createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  int _counter = 0;
  static var listnama = [
    "Muhammad Taufik Ramadhan",
    "Anisa Muliani Febiana",
    "Andri Prasetio",
  ];

  void _nambah() {
    setState(() {
      _counter++;
    });
  }

  void _ngurang() {
    setState(() {
      _counter--;
    });
  }

  var wanjay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  var shownama = listnama[Random().nextInt(listnama.length)];
                  setState(() {
                    wanjay = shownama;
                  });
                  ;
                },
                child: const Icon(Icons.refresh),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$wanjay",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _ngurang();
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "$_counter",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _nambah();
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
