// ignore_for_file: prefer_const_constructors_in_immutables, override_on_non_overriding_member, annotate_overrides

import 'package:equatable/equatable.dart';

class ModelUser extends Equatable {
  @override
  final String id;
  final String email;
  final String name;
  final String password;
  final String occupation;
  final int balance;

  ModelUser({
    required this.id,
    required this.email,
    required this.name,
    required this.password,
    this.occupation = '',
    this.balance = 0,
  });

  List<Object?> get props => [id, email, name, password, occupation, balance];
}
