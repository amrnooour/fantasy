import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fantasy/features/auth/data/model/user_signin.dart';
import 'package:fantasy/features/auth/data/model/user_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class AuthFirebaseServices {
  Future<Either> signin(UserSignin user);
  Future<Either> signup(UserSignup user);
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
  @override
  Future<Either> signin(UserSignin user) async {
    try {
       await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: user.email, password: user.password);
      return right("Signin Success");
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      }
      return left(message);
    }
  }

  @override
  Future<Either> signup(UserSignup user) async {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: user.email, password: user.password);
      
      FirebaseFirestore.instance
          .collection("users")
          .doc(data.user!.uid)
          .set({
            "name" : user.name,
            "email" : user.email,
            "phone" : user.phone
          });

      return right("Signup Succesffly");
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return left(message);
    }
  }
}
