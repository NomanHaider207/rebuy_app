import 'package:flutter/cupertino.dart';

import '../../../../../constants/routes.dart';
import 'conatinerforfields.dart';

class AccountDetailsList extends StatelessWidget {
  final List<Map<String, dynamic>> accountDetails;

  const AccountDetailsList({
    Key? key,
    required this.accountDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 500.0,
      child: Expanded(
        child: ListView.builder(
          itemCount: accountDetails.length,
          itemBuilder: (context, index) {
            final item = accountDetails[index];
            String route = '';

            switch (item['title']) {
              case 'My Account':
                route = Routes.myAccount;
                break;
              case 'My Orders':
                break;
              case 'My Listings':
                break;
              case 'Liked Items':
                break;
            }

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
                route: route,
              ),
            );
          },
        ),
      ),
    );
  }
}
