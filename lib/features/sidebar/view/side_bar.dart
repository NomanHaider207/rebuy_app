import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/assets.dart';
import '../components/accountdetailslist.dart';
import '../components/sidebarheadersection.dart';
import '../components/actionbuttons.dart';

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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              Assets.wave,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(27.0, 70.0, 27.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderSection(),
                SizedBox(height: 50.0),
                AccountDetailsList(accountDetails: accountDetails),
                SizedBox(height: 30.0),
                ActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

