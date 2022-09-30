import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController schoolcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebase = FirebaseFirestore.instance;
    CollectionReference users = firebase.collection("Users");

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(hintText: "Nama"),
              ),
              TextField(
                controller: agecontroller,
                decoration: InputDecoration(hintText: "Umur"),
              ),
              TextField(
                controller: schoolcontroller,
                decoration: InputDecoration(hintText: "Jurusan"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (namecontroller.text != "" && agecontroller.text != "" && schoolcontroller.text != "") {
                    users.add({
                      "nama": namecontroller.text,
                      "umur": int.tryParse(agecontroller.text),
                      "jurusan": schoolcontroller.text,
                    });
                    namecontroller.text = "";
                    agecontroller.text = "";
                    schoolcontroller.text = "";
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Tidak boleh ada yang kosong"),
                      ),
                    );
                  }
                },
                child: Text("submit"),
              ),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: users.snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Something went wrong');
                    }
    
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Text("Loading");
                    }
    
                    return ListView(
                      children: snapshot.data!.docs
                          .map(
                            (DocumentSnapshot document) {
                              Map<String, dynamic> data =
                                  document.data()! as Map<String, dynamic>;
                              return DataInput(
                                  nama: data['nama'],
                                  umur: data['umur'],
                                  jurusan: data['jurusan']);
                            },
                          )
                          .toList()
                          .cast(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataInput extends StatelessWidget {
  const DataInput({
    Key? key,
    required this.nama,
    required this.umur,
    required this.jurusan,
  }) : super(key: key);

  final String? nama;
  final int? umur;
  final String? jurusan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Card(
        child: Column(
          children: [
            Text(nama!),
            Text(umur.toString()),
            Text(jurusan!),
          ],
        ),
      ),
    );
  }
}
