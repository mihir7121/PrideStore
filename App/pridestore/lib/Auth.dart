import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'models/User.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var imageUrl;
  //create user object from FirebaseUser
  AppUser? _userFromFirebaseUser(User? user) {
    return user != null ? AppUser(uid: user.uid) : null;
  }

  String error = '';
  //auth change user stream
  Stream<AppUser?> get user {
    return _auth
        .idTokenChanges()
        .map((User? user) => _userFromFirebaseUser(user));
  }

  //sign in with email/pass
  Future signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'ERROR_INVALID_EMAIL':
          error = "Enter A Valid Email-Id";
          // ("Enter A Valid Email-Id");
          break;
        case 'ERROR_WRONG_PASSWORD':
          error = "Incorrect Password";
          // ("Incorrect Password");
          break;
        case 'ERROR_USER_NOT_FOUND':
          error = "User Not Found";
          // ("User Not Found");
          break;
        case 'ERROR_USER_DISABLED':
          error = "User diasbled";
          // ("User diasbled");
          break;
        case 'ERROR_TOO_MANY_REQUESTS':
          error = "Too many requests";
          // ("Too many requests");
          break;
        default:
          error = "Unknown error";
          // ("Unknown error");
          break;
      }
      return error;
    }
  }

  //register with email/pass
  Future register(String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;

      FirebaseFirestore.instance.collection('/users').doc(user!.uid).set({
        'uid': user.uid,
        'email': email,
        'name': name,
      });
      return _userFromFirebaseUser(user);
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'ERROR_WEAK_PASSWORD':
          error = "Enter a Stronger Password";
          break;
        case 'ERROR_INVALID_EMAIL':
          error = "Please Enter a Valid Email";
          break;
        case 'ERROR_EMAIL_ALREADY_IN_USE':
          error = "Email is already in Use";
          break;
        default:
          error = "Unknown Error Occured";
          break;
      }
      return error;
    }
  }

  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      return null;
    }
  }
}
