import 'package:flutter/material.dart';

class TextOptionsDesc extends StatefulWidget {
  final String text;
  const TextOptionsDesc({super.key, required this.text});

  @override
  State<TextOptionsDesc> createState() => _TextOptionsDescState();
}

class _TextOptionsDescState extends State<TextOptionsDesc> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.text} using one of the following options',  // Use widget.text to access the property
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: Color(0xFF828282),
      ),
    );
  }
}
