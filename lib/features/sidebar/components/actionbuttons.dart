import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/routes.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF3C3C3C), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                backgroundColor: Colors.transparent,
              ),
              child: Text(
                'Feedback',
                style: GoogleFonts.firaSans(
                  color: Color(0xFF3C3C3C),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(width: 30,),
          Expanded(
            child: FilledButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.login);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xFF3C3C3C), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                backgroundColor: Color(0xFF3C3C3C),
              ),
              child: Text(
                'Sign out',
                style: GoogleFonts.firaSans(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
    );
  }
}
