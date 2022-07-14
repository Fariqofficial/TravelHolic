// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/seat_cubit.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  //NOTE : 0. Available, 1. Selected, 2. Unavailable
  final String id;
  final bool isAvail;

  const SeatItem({
    Key? key,
    required this.id,
    this.isAvail = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    bgColor() {
      if (!isAvail) {
        return colorUnvailable;
      } else {
        if (isSelected) {
          return colorSelected;
        } else {
          return colorAvailable;
        }
      }
    }

    borderColor() {
      if (!isAvail) {
        return colorUnvailable;
      } else {
        if (isSelected) {
          return colorSelected;
        } else {
          return borderAvailable;
        }
      }
    }

    childText() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: textWhite.copyWith(
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvail) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: bgColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor(),
          ),
        ),
        child: childText(),
      ),
    );
  }
}
