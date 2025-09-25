import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_design/utils/appColors.dart';

class CustomField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final Widget? prefixIcon;
  final String hintText;
  final IconButton? suffixIcon;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const CustomField({
    super.key,
    this.controller,
    this.obscureText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      cursorColor: AppColors.primaryColor,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.only(left: 30, top: 30),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white.withValues(alpha: .7),
          fontSize: 20,
        ),
        fillColor: AppColors.fillColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
