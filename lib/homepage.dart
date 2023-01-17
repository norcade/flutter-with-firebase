import 'package:digimole/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Image(
          image: AssetImage("res/pic/logo.png"),
          width: 150,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut().then((value) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => LoginPage())));
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
