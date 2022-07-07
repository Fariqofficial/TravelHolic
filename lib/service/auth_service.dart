// ignore_for_file: use_rethrow_when_possible

import 'package:firebase_auth/firebase_auth.dart';
import 'package:travelholic/models/model_user.dart';
import 'package:travelholic/service/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<ModelUser> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      ModelUser user = await UserService().getUserById(credential.user!.uid);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<ModelUser> signUp(
      {required String email,
      required String password,
      required String name,
      String occupation = ''}) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      ModelUser modelUser = ModelUser(
          id: credential.user!.uid,
          email: email,
          name: name,
          password: password,
          occupation: occupation,
          balance: 280000000);

      await UserService().setUser(modelUser);
      return modelUser;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
