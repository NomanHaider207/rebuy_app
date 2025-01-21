import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/features/myaccount/components/headersection.dart';

import '../../../../../components/form_fields.dart';
import '../../../../../constants/routes.dart';
import '../components/accounttitleheader.dart';
import '../components/myaccountformfields.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  // Controllers for the fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  // Fields data
  final List<Map<String, dynamic>> fields = [
    {
      'label': 'Name',
      'hintText': 'Enter your name',
      'keyboardType': TextInputType.text,
    },
    {
      'label': 'Email',
      'hintText': 'Enter your email',
      'keyboardType': TextInputType.emailAddress,
    },
    {
      'label': 'Phone',
      'hintText': 'Enter your phone number',
      'keyboardType': TextInputType.phone,
    },
    {
      'label': 'Address',
      'hintText': 'Enter your address',
      'keyboardType': TextInputType.text,
      'maxLines': 4, // Allow multiple lines for the Address field
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 47.h, 20.w, 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                imageUrl:
                'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
                username: 'Noman haider',
                welcomeText: 'noman.hb45@gmail.com',
                onHamburgerTap: () {
                  Navigator.pushReplacementNamed(context, Routes.sideBar);
                },
              ),
              SizedBox(height: 50.0),
              MyAccountTitleHeadrer(title: "My Account"),
        
              SizedBox(height: 15.0),
              // Using FormFields to dynamically create the fields
              MyAccountFormFields(
                fields: fields,
                controllers: [
                  _nameController,
                  _emailController,
                  _phoneController,
                  _addressController
                ],
              ),
        
              SizedBox(height: 30.0,),
              SizedBox(
                width: 180.0,
                height: 44.0,
                child: OutlinedButton(
                  onPressed: () {
                    // Add desired functionality here
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF3C3C3C), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Color(0xFF3C3C3C),
                        size: 30.0,// Same color as the text
                      ),
                      SizedBox(width: 8.0), // Space between the icon and text
                      Text(
                        'Settings',
                        style: GoogleFonts.firaSans(
                          color: Color(0xFF3C3C3C),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
