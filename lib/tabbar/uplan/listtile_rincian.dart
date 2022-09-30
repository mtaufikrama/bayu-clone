// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class ListTile_Rincian extends StatelessWidget {
  const ListTile_Rincian({
    Key? key,
    required this.text_title,
    required this.text_trailing,
    required this.icon_logo,
    required this.colors,
    required this.garisisian,
    required this.garisabis,
  }) : super(key: key);

  final String text_title;
  final String text_trailing;
  final IconData icon_logo;
  final MaterialColor colors;
  final int garisisian;
  final int garisabis;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon_logo,
        color: colors,
      ),
      title: ListTile(
        dense: true,
        title: Text(
          text_title,
        ),
        trailing: Text(
          text_trailing,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Row(
        children: [
          Expanded(
            flex: garisisian,
            child: Divider(
              thickness: 5,
              color: colors,
            ),
          ),
          Expanded(
            flex: garisabis,
            child: Divider(
              thickness: 5,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
