import 'package:flutter/material.dart';
import 'package:travelholic/cubit/cubit_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Membuat Reusable Widget

// ignore_for_file: prefer_const_constructors

class CustomNavBottomItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomNavBottomItem({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CubitCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<CubitCubit>().state == index
                ? mikuColor
                : greyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<CubitCubit>().state == index
                  ? mikuColor
                  : transparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
