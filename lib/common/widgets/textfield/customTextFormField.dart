import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colos.dart';

class Customtextformfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isVisible;
  final double boderRadius = 30;
  final Icon? trailingIcon;
  const Customtextformfield(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.isVisible,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        controller: controller,
        obscureText: !isVisible,
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boderRadius),
              borderSide: const BorderSide(
                color: AppColors.grey,
              )),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.grey,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boderRadius),
              borderSide: const BorderSide(
                color: AppColors.grey,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(boderRadius),
              borderSide: const BorderSide(color: AppColors.grey, width: 0.4)),
        ),
      ),
    );
  }
}
