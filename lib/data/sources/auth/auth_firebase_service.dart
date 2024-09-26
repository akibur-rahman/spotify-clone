import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> signUp(CreateUserReq createUserReq);
  Future<void> signIn();
}

class AuthFirebaseServiceImplementation extends AuthFirebaseService {
  @override
  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: '', password: '');
    } on FirebaseAuthException catch (e) {}
  }

  @override
  Future<void> signUp(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);
    } on FirebaseAuthException catch (e) {}
  }
}
