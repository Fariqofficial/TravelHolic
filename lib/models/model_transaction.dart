import 'package:equatable/equatable.dart';
import 'package:travelholic/models/model_destination.dart';

class TransactionModel extends Equatable {
  final String id;
  final ModelDestination destination;
  final int amountUser;
  final String seatSelected;
  final bool snack;
  final double vat;
  final int price;
  final int totalPrice;

  const TransactionModel({
    required this.destination,
    this.id = '',
    this.amountUser = 0,
    this.seatSelected = '',
    this.snack = false,
    this.vat = 0,
    this.price = 0,
    this.totalPrice = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        destination: ModelDestination.fromJson(
          json['destination']['id'],
          json['destination'],
        ),
        id: id,
        amountUser: json['amountUser'],
        seatSelected: json['seatSelected'],
        snack: json['snack'],
        vat: json['vat'],
        price: json['price'],
        totalPrice: json['totalPrice'],
      );

  @override
  List<Object?> get props => [
        destination,
        amountUser,
        seatSelected,
        snack,
        vat,
        price,
        totalPrice,
      ];
}
