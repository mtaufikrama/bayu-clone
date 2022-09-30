// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'listtile_rincian.dart';

class Card_Rincian extends StatefulWidget {
  Card_Rincian({
    Key? key,
  }) : super(key: key);

  int data = 100;
  int topping = 5;
  int telepon = 100;

  @override
  State<Card_Rincian> createState() => _Card_RincianState();
}

class _Card_RincianState extends State<Card_Rincian> {
  @override
  Widget build(BuildContext context) {
    var showdata = widget.data;
    var showtopping = widget.topping;
    var showtelepon = widget.telepon;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      elevation: 5,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Rincian Pembelian",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: TextButton.icon(
              onPressed: () {
                setState(() {
                  widget.data = Random().nextInt(5);
                  widget.topping = widget.data;
                  widget.data = widget.data * 20;
                  widget.telepon = widget.data;
                });
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Lihat Detail"),
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile_Rincian(
            text_title: "Sisa Total Data",
            text_trailing: "$showdata GB",
            icon_logo: Icons.wifi,
            colors: Colors.blue,
            garisisian: widget.data,
            garisabis: 100 - widget.data,
          ),
          ListTile_Rincian(
            text_title: "Sisa Topping",
            text_trailing: "$showtopping GB",
            icon_logo: Icons.add,
            colors: Colors.green,
            garisisian: widget.topping,
            garisabis: 5 - widget.topping,
          ),
          ListTile_Rincian(
            text_title: "Sisa Telpon",
            text_trailing: "$showtelepon Menit",
            icon_logo: Icons.call,
            colors: Colors.red,
            garisisian: widget.telepon,
            garisabis: 100 - widget.telepon,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
