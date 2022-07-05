// ignore_for_file: unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/auth_cubit.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import 'package:travelholic/ui/widgets/item_textfield.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  //Controller untuk menghandle perubahan value
  final TextEditingController nameController = TextEditingController(
    text: '',
  );

  final TextEditingController emailController = TextEditingController(
    text: '',
  );

  final TextEditingController passwordController = TextEditingController(
    text: '',
  );

  final TextEditingController occupationController = TextEditingController(
    text: '',
  );

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and capture \nyour travelling moment',
          style: textBlack.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextField(
          title: 'Fullname',
          hintText: 'Input your full name',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextField(
          title: 'Email Address',
          hintText: 'Input your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          title: 'Password',
          hintText: 'Input your password',
          obsecureText: true,
          controller: passwordController,
        );
      }

      Widget occupationInput() {
        return CustomTextField(
          title: 'Occupation (optional)',
          hintText: 'Input your occupation',
          controller: occupationController,
        );
      }

      Widget buttonSubmit() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              //Ketika sudah navigasi tidak bisa kembali ke menu sebelumnya
              Navigator.pushNamedAndRemoveUntil(
                  context, '/amount-pages', (route) => false);
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: softredColor,
                  content: Text(state.errorMsg),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return CustomButton(
              title: 'Sign Up',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      occupation: occupationController.text,
                    );
              },
            );
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            occupationInput(),
            buttonSubmit()
          ],
        ),
      );
    }

    Widget termsCondition() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: textGrey.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
          ],
        ),
      ),
    );
  }
}
