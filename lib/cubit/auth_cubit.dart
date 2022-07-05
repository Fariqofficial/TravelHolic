import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelholic/models/model_user.dart';
import 'package:travelholic/service/auth_service.dart';
import 'package:travelholic/service/user_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String occupation = ''}) async {
    try {
      emit(AuthLoading());

      ModelUser user = await AuthService().signUp(
          email: email, password: password, name: name, occupation: occupation);

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthService().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(
        AuthFailure(e.toString()),
      );
    }
  }

  void getCurrentUser(String id) async {
    try {
      ModelUser model = await UserService().getUserById(id);
      emit(AuthSuccess(model));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }
}
