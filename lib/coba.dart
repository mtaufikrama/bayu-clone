// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NyobaGaes extends StatefulWidget {
  const NyobaGaes({Key? key}) : super(key: key);

  @override
  State<NyobaGaes> createState() => _NyobaGaesState();
}

class _NyobaGaesState extends State<NyobaGaes> {
  var email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(email == null ? "" : email.toString()),
            ElevatedButton(
              onPressed: () {
                // FirebaseFirestore.instance
                //     .collection('users')
                //     .doc("L6FxFpUoDqb20oM4vhJ8yaltxdp1")
                //     .get()
                //     .then(
                //   (DocumentSnapshot documentSnapshot) {
                //     print(documentSnapshot["email"]);
                //     print(FirebaseAuth.instance.currentUser!.uid);
                //   },
                // );
              },
              child: Text("submit data"),
            ),
          ],
        ),
      ),
    );
  }
}
