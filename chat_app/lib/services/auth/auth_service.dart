import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  // instance of auth

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  // get currentUser
  User? getCurrentUser(){
    return _auth.currentUser;
  }


  // sign in

  Future<UserCredential> signWithEmailPassword(String email,String password) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);


      // save user info in a separate doc
        _firestore.collection("Users").doc(userCredential.user!.uid).set(
        {
          'uid':userCredential.user!.uid,
          'email': email,
        }
      );

      return userCredential;
    }
    on FirebaseAuthException catch(e){

      throw Exception(e.code);
    }
  }

// sign out
Future<void> signOut()async{
    return await _auth.signOut();
}

// sign up

Future<UserCredential> signUpWithEmailPassword(String email,String password)async{
   try{
     UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      _firestore.collection("Users").doc(userCredential.user!.uid).set(
         {
           'uid':userCredential.user!.uid,
           'email': email,
         }
     );
     return userCredential;
   }
   on FirebaseAuthException catch(e){
     throw Exception(e.code);
   }
}

// errors
}