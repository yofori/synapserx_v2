import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  // For Authentication related functions you need an instance of FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //  This getter will be returning a Stream of User object.
  //  It will be used to check if the user is logged in or not.
  Stream<User?> get authStateChange => _auth.authStateChanges();

  // Now This Class Contains 3 Functions currently
  // 1. signInWithGoogle
  // 2. signOut
  // 3. signInwithEmailAndPassword

  //  All these functions are async because this involves a future.
  //  if async keyword is not used, it will throw an error.
  //  to know more about futures, check out the documentation.
  //  https://dart.dev/codelabs/async-await
  //  Read this to know more about futures.
  //  Trust me it will really clear all your concepts about futures

  //  SigIn the user using Email and Password
  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      await showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Error Occured'),
          content: Text(e.toString()),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }

  // SignUp the user using Email and Password
  Future<void> signUpWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                  title: const Text('Error Occured'),
                  content: Text(e.toString()),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: const Text("OK"))
                  ]));
    } catch (e) {
      if (e == 'email-already-in-use') {
        // print('Email already in use.');
      } else {
        // print('Error: $e');
      }
    }
  }

  //  SignIn the user Google
  Future<void> signInWithGoogle(BuildContext context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    try {
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      await showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Error Occured'),
          content: Text(e.toString()),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }

  Future<void> signInWithApple() async {
    try {
      final appleProvider = AppleAuthProvider().addScope('email');
      var userCredential =
          await FirebaseAuth.instance.signInWithProvider(appleProvider);
      print(
          ">>>>>>>>> ${userCredential.user?.displayName}"); // THIS IS NULL and also user?.email
    } catch (e) {
      print("ZAXA >>>>> $e");
    }
  }

  Future<void> signInWithMicrosoft() async {
    try {
      OAuthProvider oAuthProvider = OAuthProvider('microsoft.com');
      await _auth.signInWithProvider(oAuthProvider);
    } on FirebaseAuthException catch (ex) {
      print("${ex.code} - ${ex.message}");
    }
  }

  //  SignOut the current user
  Future<void> signOut() async {
    try {
      final providerData = _auth.currentUser!.providerData;
      if (providerData.isNotEmpty) {
        if (providerData[0].providerId.toLowerCase().contains('google')) {
          await GoogleSignIn().signOut(); // google signOut
        }
      }
      await _auth.signOut(); // firebase signOut
    } catch (e) {
      print(e);
    }
  }

  Future<String?> getFirebaseIdToken() async {
    User? user = _auth.currentUser;
    String? token;
    //return FirebaseAuth.instance.currentUser?.getIdToken(true).toString();
    if (user != null) {
      await user.getIdToken(true).then((result) {
        token = result.toString();
      });
    }
    return token;
  }

  Future<String?> getFirebaseUID() async {
    User? user = FirebaseAuth.instance.currentUser;
    var firebaseuid = user?.uid;
    log(firebaseuid.toString());
    return firebaseuid;
  }

  //change user ed password
  Future<void> changePassword(String newPassword) async {
    final user = _auth.currentUser;

    if (user != null) {
      try {
        debugPrint('password has been changed');
        await user.updatePassword(newPassword);
      } on FirebaseAuthException catch (e) {
        throw e.message.toString();
      }
    }
  }
}
