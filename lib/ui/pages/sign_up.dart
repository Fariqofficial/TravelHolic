// ignore_for_file: unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import 'package:travelholic/ui/widgets/item_textfield.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
        );
      }

      Widget emailInput() {
        return CustomTextField(
          title: 'Email Address',
          hintText: 'Input your email address',
        );
      }

      Widget passwordInput() {
        return CustomTextField(
          title: 'Password',
          hintText: 'Input your password',
          obsecureText: true,
        );
      }

      Widget occupationInput() {
        return CustomTextField(
          title: 'Occupation (optional)',
          hintText: 'Input your occupation',
        );
      }

      Widget buttonSubmit() {
        return CustomButton(
          title: 'Sign Up',
          onPressed: () {
            Navigator.pushNamed(context, '/amount-pages');
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
