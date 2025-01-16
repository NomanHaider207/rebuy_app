import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants/image_assets/assets.dart';
import '../../../../../constants/routes/routes.dart';
import '../components/conatinerforfields.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final List<Map<String, dynamic>> accountDetails = [
    {
      'icon': Icons.account_circle,
      'title': 'My Account',
      'subtitle': 'Edit your details, account settings',
    },
    {
      'icon': Icons.shopping_cart,
      'title': 'My Orders',
      'subtitle': 'View all your orders',
    },
    {
      'icon': Icons.list,
      'title': 'My Listings',
      'subtitle': 'View your products listing for sales',
    },
    {
      'icon': Icons.favorite_border,
      'title': 'Liked Items',
      'subtitle': 'See the products you have wishlisted',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Bottom Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
             Assets.wave,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          // Sidebar Content
          Padding(
            padding: EdgeInsets.fromLTRB(27.0, 70.0, 27.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ReBuy',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Dosis',
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF3C3C3C),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.pushReplacementNamed(context,Routes.home);;
                      },
                      child: Icon(
                        Icons.close,
                        size: 50.0,
                        color: Color(0xFF555555),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50.0),
                SizedBox(
                  width: 360,
                  height: 500.0,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: accountDetails.length,
                      itemBuilder: (context, index) {
                        final item = accountDetails[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: AccountDetailsContainer(
                            icon: Icon(
                              item['icon'],
                              size: 40,
                              color: Color(0xFF5F5F5F),
                            ),
                            title: item['title'],
                            subtitle: item['subtitle'],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180.0,
                      height: 44.0,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Color(0xFF3C3C3C), width: 2),
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
                    SizedBox(
                      width: 180.0,
                      height: 44.0,
                      child: FilledButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              color: Color(0xFF3C3C3C), width: 2),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
