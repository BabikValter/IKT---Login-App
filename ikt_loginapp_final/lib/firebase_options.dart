// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAE3bO29-WcTKFzL9ZEnZxkBYTX3gKYqaY',
    appId: '1:1044704038728:web:816e6012a3f603b6bc6d7d',
    messagingSenderId: '1044704038728',
    projectId: 'ikt-login',
    authDomain: 'ikt-login.firebaseapp.com',
    storageBucket: 'ikt-login.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0qDX2VxU_vsrr6Z35uYGo3UQjEXLlPNM',
    appId: '1:1044704038728:android:3dd33459d1ec7e1cbc6d7d',
    messagingSenderId: '1044704038728',
    projectId: 'ikt-login',
    storageBucket: 'ikt-login.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc3EakQupTxBHOxYKLAyTLPYX1BLsxRZI',
    appId: '1:1044704038728:ios:b9e4f61cc9d177a0bc6d7d',
    messagingSenderId: '1044704038728',
    projectId: 'ikt-login',
    storageBucket: 'ikt-login.appspot.com',
    iosClientId: '1044704038728-p3tftv2ub4g1s5shkn29k9islfp0rob2.apps.googleusercontent.com',
    iosBundleId: 'com.ikt.app',
  );
}
