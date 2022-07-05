// ignore_for_file: prefer_final_fields, use_rethrow_when_possible

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelholic/models/model_user.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(ModelUser modelUser) async {
    try {
      _userReference.doc(modelUser.id).set({
        'email': modelUser.email,
        'password': modelUser.password,
        'name': modelUser.name,
        'occupation': modelUser.occupation,
        'balance': modelUser.balance
      });
    } catch (e) {
      throw e;
    }
  }

  Future<ModelUser> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return ModelUser(
          id: id,
          email: snapshot['email'],
          name: snapshot['name'],
          password: snapshot['password'],
          occupation: snapshot['occupation'],
          balance: snapshot['balance']);
    } catch (e) {
      throw e;
    }
  }
}
