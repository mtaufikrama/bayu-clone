import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class EmailSignInPage extends StatelessWidget {
  const EmailSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* TITLE
            Text(
              'SIGN IN WITH EMAIL/PASSWORD',
            ),
            const SizedBox(height: 10),
            StreamBuilder<User?>(
              stream: FirebaseAuth.instance.userChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text("SIGNED IN ${snapshot.data?.email}");
                } else {
                  return Text("You haven't signed in yet");
                }
              },
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 15, 30, 10),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: emailController,
                cursorColor: Colors.orange,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'Email'),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 15),
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: TextField(
                controller: passwordController,
                cursorColor: Colors.orange,
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: 'Password'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange.shade900)),
                    onPressed: () async {
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((authResult) async {
                            String? fcmToken =  
                                await FirebaseMessaging.instance.getToken();
                            User? users = authResult.user;

                            FirebaseFirestore.instance
                                .collection("users")
                                .doc(users?.uid)
                                .set({
                              "email": users?.email,
                              "Token": fcmToken,
                            });
                          });
                        } on FirebaseAuthException catch (e) {
                          showNotification(context, e.message.toString());
                        }
                      } else {
                        showNotification(context, "Isi Email dan Password");
                      }
                    },
                    child: const Text("Sign Up"),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),

                //* SIGN IN BUTTON
                SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.orange.shade900)),
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text);
                        } on FirebaseAuthException catch (e) {
                          showNotification(context, e.message.toString());
                        }
                      },
                      child: const Text("Sign In")),
                ),
              ],
            ),
            TextButton(
                onPressed: () async {
                  FirebaseAuth.instance.signOut();
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.orange.shade900),
                )),
            TextButton(
                onPressed: () async {
                  if (emailController.text.isNotEmpty) {
                    try {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(email: emailController.text);
                      showNotification(
                          context, "Lihat Kotak Masuk / Spam pada Email");
                    } on FirebaseAuthException catch (e) {
                      showNotification(context, e.message.toString());
                    }
                  } else {
                    showNotification(context, "Isi terlebih dahulu email anda");
                  }
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.orange.shade900),
                ))
          ],
        ),
      ),
    );
  }

  void showNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.orange.shade900,
        content: Text(message.toString())));
  }
}
