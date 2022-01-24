import 'package:flutter/material.dart';
import 'package:ikt_mobil_app/pages/loading.dart';
import 'package:ikt_mobil_app/pages/dates.dart';
import 'package:ikt_mobil_app/pages/login.dart';
import 'package:ikt_mobil_app/pages/addDate.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/': (context) => Loading(),
    '/login': (context) => Login(),
    '/dates': (context) => Dates(),
    '/addDate': (context) => AddDate()
  },
));