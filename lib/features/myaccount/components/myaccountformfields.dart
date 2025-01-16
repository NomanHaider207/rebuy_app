import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/features/myaccount/components/customtextfieldsmyaccount.dart'; // Make sure you have the CustomTextField widget.

class MyAccountFormFields extends StatelessWidget {
  final List<Map<String, dynamic>> fields;
  final List<TextEditingController> controllers;

  const MyAccountFormFields({
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
          padding: EdgeInsets.only(bottom: index == fields.length - 1 ? 0.0 : 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${field['label']}:",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 2.0,),
              MyAccountCustomTextField(
                controller: controller,
                hintText: field['hintText'],
                obscureText: field['obscureText'] ?? false,
                keyboardType: field['keyboardType'] ?? TextInputType.text,
                maxLines: field['maxLines'], // Pass maxLines for specific fields
              ),
            ],
          ),
        );
      }),
    );
  }
}
