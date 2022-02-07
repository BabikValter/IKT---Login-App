import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:ikt_loginapp_final/models/auser.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on User
  AUser? _userFromFirebaseUser(User? user) {
    return user != null ? AUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<AUser?> get user {
    return _auth.authStateChanges()
      .map(_userFromFirebaseUser);
  }

  // sign in email
  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      debugPrint(e.toString());
      return null;
    }
  }


  // register email
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      // create document for user with the uid
      // await DatabaseService(uid: user!.uid).updateUserData('vizsgálat', DateTime(2000, 1, 1, 1, 1), 'Dr. Jani');
      return _userFromFirebaseUser(user);
    } catch(e) {
      debugPrint(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      debugPrint(e.toString());
      
    }
  }
}