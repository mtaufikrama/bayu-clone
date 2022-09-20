// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class ListTile_Rincian extends StatelessWidget {
  const ListTile_Rincian({
    Key? key,
    required this.text_title,
    required this.text_trailing,
    required this.icon_logo,
    required this.colors,
  }) : super(key: key);

  final String text_title;
  final String text_trailing;
  final IconData icon_logo;
  final MaterialColor colors;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon_logo),
      title: ListTile(
        dense: true,
        title: Text(text_title),
        trailing: Text(text_trailing),
      ),
      subtitle: Divider(
        thickness: 5,
        color: colors,
      ),
    );
  }
}
