// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Felhasználónév',
                  hintText: 'Add meg a felhasználóneved',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jelszó',
                  hintText: 'Add meg a jelszavad',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextButton(
                onPressed: null,
                child: Text('Bejelentkezés'),
              ),
            ),
          ],
        )
      )
    );
  }
}
