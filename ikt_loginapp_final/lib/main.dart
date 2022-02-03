import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/models/auser.dart';
import 'package:ikt_loginapp_final/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ikt_loginapp_final/services/auth.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: Wrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
