// ignore_for_file: prefer_const_constructors_in_immutables

part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final ModelUser modelUser;
  AuthSuccess(this.modelUser);

  @override
  List<Object> get props => [modelUser];
}

class AuthFailure extends AuthState {
  final String errorMsg;
  AuthFailure(this.errorMsg);

  @override
  List<Object> get props => [errorMsg];
}
