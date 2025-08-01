import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
   static signInWithGoogle() async {
    //begin interactive sign in process
     await GoogleSignIn.instance.initialize(serverClientId: '122106600540-359hu91sqgrthmeq10746vic85uouq6a.apps.googleusercontent.com');
     final GoogleSignInAccount gUser = await GoogleSignIn.instance.authenticate();
     // Obtain auth details from request
     final GoogleSignInAuthentication gAuth = gUser.authentication;
    // create  a new credential for user
     final credential = GoogleAuthProvider.credential(
       idToken: gAuth.idToken,
     );
    // finally, let's sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
