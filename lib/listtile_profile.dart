import 'package:flutter/material.dart';
import 'dart:math';

class ListTile_Profile extends StatefulWidget {
  const ListTile_Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<ListTile_Profile> createState() => _ListTile_ProfileState();
}

class _ListTile_ProfileState extends State<ListTile_Profile> {
  static var listnama = [
    "Muhammad Taufik Ramadhan",
    "Anisa Muliani Febiana",
    "Andri Prasetio",
  ];

  static var listnotelp = [
    "085831391581",
    "089646689836",
    "082113015602",
  ];
  var shownama = "Muhammad Taufik Ramadhan";

  var showtelp = "085831391581";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 15, top: 10),
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn0-production-images-kly.akamaized.net/VT-lRzXrTni_sY60CWdG8Z3gnUE=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1803883/original/018366800_1513428575-20171216-Muhammad_Ali_2.jpg"),
      ),
      trailing: IconButton(
        onPressed: () {
          var random = Random().nextInt(listnama.length);
          setState(() {
            shownama = listnama[random];
            showtelp = listnotelp[random];
          });
        },
        icon: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
      title: Text(
        shownama,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        showtelp,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
