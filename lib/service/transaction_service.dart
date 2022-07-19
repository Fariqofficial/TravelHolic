// ignore_for_file: prefer_final_fields, use_rethrow_when_possible

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelholic/models/model_transaction.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountUser': transaction.amountUser,
        'seatSelected': transaction.seatSelected,
        'snack': transaction.snack,
        'vat': transaction.vat,
        'price': transaction.price,
        'totalPrice': transaction.totalPrice,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<List<TransactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();

      List<TransactionModel> transactions = result.docs.map((e) {
        return TransactionModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return transactions;
    } catch (e) {
      throw e;
    }
  }
}
