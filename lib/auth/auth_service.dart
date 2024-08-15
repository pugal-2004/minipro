import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  //instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign In 
   
   Future<UserCredential> signInWithEmailPasssword(String email,password) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }
    on FirebaseAuthException catch(e){
      throw Exception(e.code);

    }
   }

   //sign Up
   Future<UserCredential>signUpWithEmailPasssword(String email,password)async{
    try{
    
      UserCredential userCredential= await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password,
        );
        return userCredential;

    }on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
   }

   //sign out

   Future<void> signOut() async{
    return await _auth.signOut();
   }
}