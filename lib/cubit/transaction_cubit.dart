// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelholic/models/model_transaction.dart';
import 'package:travelholic/service/transaction_service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel model) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(model);
      emit(TransactionSuccess([]));
    } catch (e) {
      emit(TransactionFailure(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());

      List<TransactionModel> transactions =
          await TransactionService().fetchTransactions();

      emit(TransactionSuccess(transactions));
    } catch (e) {
      emit(TransactionFailure(e.toString()));
    }
  }
}
