// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

class CubitCubit extends Cubit<int> {
  CubitCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
