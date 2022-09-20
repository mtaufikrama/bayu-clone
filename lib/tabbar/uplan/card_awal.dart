// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'menu_topup.dart';

class Card_TopUp extends StatefulWidget {
  const Card_TopUp({
    Key? key,
  }) : super(key: key);

  @override
  State<Card_TopUp> createState() => _Card_TopUpState();
}

class _Card_TopUpState extends State<Card_TopUp> {
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
          const ListTile(
            title: Text(
              "Pulsa Kamu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              "Rp 2.000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 70,
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Menu_TopUp(
                    icon: Icons.wifi,
                    text: "Beli Data",
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  indent: 2,
                  endIndent: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Menu_TopUp(
                    icon: Icons.add,
                    text: "Beli Topping",
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  indent: 2,
                  endIndent: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Menu_TopUp(
                    icon: Icons.call,
                    text: "Beli Pulsa",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}