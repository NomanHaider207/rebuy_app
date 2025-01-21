import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../constants/assets.dart';
import '../../../constants/routes.dart';
import '../../auth/services/authservices.dart';
import '../components/conatinerforfields.dart';
import '../components/sidebarheadersection.dart';
import '../components/actionbuttons.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                  SizedBox(height: 60.0),
                  AccountDetailsContainer(
                    icon: Icon(
                      Icons.account_circle,
                      size: 40,
                      color: Color(0xFF5F5F5F),
                    ),
                    title: 'My Account',
                    subtitle: 'Edit your details, account settings',
                    route: Routes.myAccount,
                  ),
                  SizedBox(height: 20.0),
                  AccountDetailsContainer(
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 40,
                      color: Color(0xFF5F5F5F),
                    ),
                    title: 'My Orders',
                    subtitle: 'View all your orders',
                    route: Routes.myOrders,
                  ),
                  SizedBox(height: 20.0),
                  AccountDetailsContainer(
                    icon: Icon(
                      Icons.list,
                      size: 40,
                      color: Color(0xFF5F5F5F),
                    ),
                    title: 'My Listings',
                    subtitle: 'View your products listing for sales',
                    route: Routes.myListing,
                  ),
                  SizedBox(height: 20.0),
                  AccountDetailsContainer(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 40,
                      color: Color(0xFF5F5F5F),
                    ),
                    title: 'Liked Items',
                    subtitle: 'See the products you have wishlisted',
                    route: Routes.likedItems,
                  ),
                  SizedBox(height: 50.0), // Space between list and action buttons
                  ActionButtons(onSignOutPressed: _signOut, onFeedbackPressed: () {},),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signOut() async {
    await authService.signOut();
    Navigator.pushReplacementNamed(context, Routes.login);

  }
}
