import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
  final TextInputType? keyboardType;
  final bool obscureText;

  final IconData? prefixIcon;
  final String? hintText;
  final IconData? suffixIcon;

  final String? Function(String?)? validator;

  const TextFieldDefault({
    super.key,
    this.keyboardType,
    this.prefixIcon,
    this.hintText,
    this.validator,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      cursorColor: Colors.white,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white38,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        iconColor: Colors.white,
        prefixIconColor: Colors.white,
        prefixIcon: Icon(prefixIcon),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        suffixIconColor: Colors.white,
        suffixIcon: Icon(suffixIcon),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      validator: validator,
    );
  }
}
