import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/services/auth.dart';
import 'package:ikt_loginapp_final/shared/constants.dart';
import 'package:ikt_loginapp_final/shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({ Key? key, required this.toggleView }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? const Loading() : Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Bejelentkezés'),
        actions: <Widget>[
          TextButton.icon(
            icon: const Icon(Icons.person),
            label: const Text('Regisztráció'),
            onPressed: () {
              widget.toggleView();
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val!.isEmpty ? 'Adj meg egy Email címet' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Jelszó'),
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Legalább 6+ karakteres legyen a jelszó' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text(
                  'Bejelentkezés',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink[400]
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() { 
                        error = 'Helytelen adatok';
                        loading = false;
                      });
                    }
                  }
                },
              ),
              const SizedBox(height: 12.0),
              Text(
                error,
                style: const TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}