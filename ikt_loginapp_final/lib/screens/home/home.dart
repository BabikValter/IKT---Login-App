import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/services/auth.dart';

class Home extends StatelessWidget {
  Home({ Key? key }) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: const Text('Időpontfoglalás'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            icon: const Icon(Icons.person),
            label: const Text('Kijelentkezés'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}