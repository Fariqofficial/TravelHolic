// ignore_for_file: prefer_const_constructors_in_immutables

part of 'destination_cubit_cubit.dart';

abstract class DestinationCubitState extends Equatable {
  const DestinationCubitState();

  @override
  List<Object> get props => [];
}

class DestinationCubitInitial extends DestinationCubitState {}

class DestinationLoading extends DestinationCubitState {}

class DestinationSuccess extends DestinationCubitState {
  final List<ModelDestination> destinations;

  DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailure extends DestinationCubitState {
  final String error;
  DestinationFailure(this.error);

  @override
  List<Object> get props => [error];
}
