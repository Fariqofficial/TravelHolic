import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/auth_cubit.dart';
import 'package:travelholic/cubit/destination_cubit_cubit.dart';
import 'package:travelholic/ui/widgets/destination_tile.dart';
import 'package:travelholic/ui/widgets/item_destination.dart';
import '../../models/model_destination.dart';
import '../../shared/theme.dart';

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubitCubit>().fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,\n${state.modelUser.name}',
                          style: textBlack.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where do you travel today? ^^',
                          style: textGrey.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_ava.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination(List<ModelDestination> destinations) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destinations.map((ModelDestination destination) {
              return DestinationItem(destination);
            }).toList(),
          ),
        ),
      );
    }

    Widget newDestination(List<ModelDestination> destinations) {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most Visited This Year',
              style: textBlack.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Column(
              children: destinations.map((ModelDestination destination) {
                return DestinationTile(destination);
              }).toList(),
            ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubitCubit, DestinationCubitState>(
      listener: (context, state) {
        if (state is DestinationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: softredColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              header(),
              popularDestination(state.destinations),
              newDestination(state.destinations),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
