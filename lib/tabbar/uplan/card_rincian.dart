// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'listtile_rincian.dart';

class Card_Rincian extends StatelessWidget {
  const Card_Rincian({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            title: const Text("Rincian Pembelian"),
            trailing: TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Lihat Detail"),
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          const ListTile_Rincian(
            text_title: "Sisa Total Data",
            text_trailing: "10 GB",
            icon_logo: Icons.wifi,
            colors: Colors.blue,
          ),
          const ListTile_Rincian(
            text_title: "Sisa Topping",
            text_trailing: "500 MB",
            icon_logo: Icons.add,
            colors: Colors.green,
          ),
          const ListTile_Rincian(
            text_title: "Sisa Telpon",
            text_trailing: "10 Menit",
            icon_logo: Icons.call,
            colors: Colors.red,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
