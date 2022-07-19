part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionFailure extends TransactionState {
  final String error;
  const TransactionFailure(this.error);

  @override
  List<Object> get props => [error];
}

class TransactionSuccess extends TransactionState {
  final List<TransactionModel> model;

  const TransactionSuccess(this.model);

  @override
  List<Object> get props => [model];
}
