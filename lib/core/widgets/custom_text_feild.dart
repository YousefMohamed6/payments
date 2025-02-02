import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    required this.lable,
    this.fontSize,
    this.fontColor,
  });
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final String lable;
  final double? fontSize;
  final Color? fontColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          lable,
          style: TextStyle(fontSize: fontSize ?? 16, color: fontColor),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: validator,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
