import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/models/auser.dart';
import 'package:ikt_loginapp_final/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AUser?>(context);
    // ignore: avoid_print
    print(user);

    // return either Home or Authenticate
    if (user == null) { return const Authenticate(); }
    return Home();
  }
}