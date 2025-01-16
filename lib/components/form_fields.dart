import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_textfields.dart';

class FormFields extends StatelessWidget {
  final List<Map<String, dynamic>> fields;
  final List<TextEditingController> controllers;

  const FormFields({
    Key? key,
    required this.fields,
    required this.controllers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(fields.length, (index) {
        final field = fields[index];
        final controller = controllers[index];

        return Padding(
          padding:
              EdgeInsets.only(bottom: index == fields.length - 1 ? 0.0 : 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomTextField(
              controller: controller,
              hintText: field['hintText'],
              obscureText: field['obscureText'] ?? false,
              keyboardType: field['keyboardType'] ?? TextInputType.text,
            ),
          ]),
        );
      }),
    );
  }
}
