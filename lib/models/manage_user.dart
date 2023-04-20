import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sova/main.dart';

class NewUser {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create account
  Future registerUser(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return user;
    } catch (e) {
      print('REGISTER ERROR!!!!!');
      print(e.toString());
      throw Exception(e);
    }
  }

  // Sign up
  Future signInUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print('SIGN IN ERROR!!!!!');
      print(e.toString());
      return null;
    }
  }

  // Log out
  Future logOut() async {
    await _auth.signOut();
  }

  // auth status
}
