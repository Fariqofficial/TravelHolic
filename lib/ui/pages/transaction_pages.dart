// ignore_for_file: prefer_const_constructors, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/transaction_cubit.dart';
import 'package:travelholic/shared/theme.dart';
import 'package:travelholic/ui/widgets/item_transactions.dart';

class TransactionPages extends StatefulWidget {
  const TransactionPages({Key? key}) : super(key: key);

  @override
  State<TransactionPages> createState() => _TransactionPagesState();
}

class _TransactionPagesState extends State<TransactionPages> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.model.length == 0) {
            return Center(
              child: Text('Transaction Not Found 😮'),
            );
          } else {
            return ListView.builder(
                itemCount: state.model.length,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                itemBuilder: (context, index) {
                  return TransactionItems(
                    state.model[index],
                  );
                });
          }
        }

        return Center(
          child: Text('Transaction Pages'),
        );
      },
    );
  }
}
