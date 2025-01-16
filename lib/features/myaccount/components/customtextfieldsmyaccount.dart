import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountCustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final int? maxLines;

  const MyAccountCustomTextField({
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        maxLines: maxLines ?? 1, // Set the maxLines dynamically
        minLines: maxLines == null ? null : 1,

        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.edit),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF656565)),
          filled: true,
          fillColor: Color(0xFFDEDEDE),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: maxLines != null && maxLines! > 1 ? 20.0 : 15.0,
            horizontal: 20.0,
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
