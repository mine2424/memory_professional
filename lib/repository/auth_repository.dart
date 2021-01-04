import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  User authUser();
  String loggedInUserId();
  Future<UserCredential> signInWithAnonymously();
}
