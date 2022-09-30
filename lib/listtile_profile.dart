// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:image_picker/image_picker.dart';

class ListTile_Profile extends StatefulWidget {
  const ListTile_Profile({
    Key? key,
  }) : super(key: key);

  @override
  State<ListTile_Profile> createState() => _ListTile_ProfileState();
}

class _ListTile_ProfileState extends State<ListTile_Profile> {
  static var listnama = [
    "Harion Donika",
    "Kiki Antonika",
    "Ade Tri Putra",
    "Eko Aji Saputra",
    "Muhammad Taufik Ramadhan",
    "Edriati",
    "Syafrizal",
  ];

  static var urutansilsilah = [
    "Anak ke 1",
    "Anak ke 2",
    "Anak ke 3",
    "Anak ke 4",
    "Anak ke 5",
    "Mama",
    "Bapak",
  ];

  static var foto_profil = [
    "Doni",
    "Kiki",
    "Ade",
    "Eko",
    "Opik",
    "Mama",
    "Bapak",
  ];

  void _randomProfile(int random) {
    return setState(
      () {
        shownama = listnama[random];
        showsilsilah = urutansilsilah[random];
        showfoto = foto_profil[random];
      },
    );
  }

  var showfoto = "Opik";
  var shownama = "Muhammad Taufik Ramadhan";
  var showsilsilah = "Anak ke 5";

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 15, top: 10),
      leading: GestureDetector(
        onTap: () async {
          _dialogbuilder(context);
          final ImagePicker _picker = ImagePicker();
          final XFile? imagePicked =
              await _picker.pickImage(source: ImageSource.gallery);
          String? image = imagePicked?.path;
          FirebaseFirestore.instance
              .collection("users")
              .doc(FirebaseAuth.instance.currentUser!.uid).path;
          setState(() {});
        },
        child: CircleAvatar(
          backgroundImage: AssetImage("images/$showfoto.jpeg"),
        ),
      ),
      trailing: IconButton(
        onPressed: () {
          var random = Random().nextInt(listnama.length);
          _randomProfile(random);
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
        showsilsilah,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Future<void> _dialogbuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/$showfoto.jpeg"),
            ),
          ),
        );
      },
    );
  }
}
