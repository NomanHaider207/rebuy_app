import 'package:flutter/material.dart';
import 'package:rebuy/components/custom_navbar.dart';

import '../../../../../constants/image_assets/assets.dart';
import '../../../../../constants/routes/routes.dart';
import '../components/list_builder.dart';
import '../components/profile_header.dart';
import '../components/section_header.dart';
import '../components/search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Map<String, dynamic>> products = [
    {
      'imageUrl': Assets.product,
      'title': 'Noman',
      'subtitle': '2018 | Funskool',
      'price': '\$890',
      'isFavorite': true,
    },
    {
      'imageUrl': Assets.product,
      'title': 'Another',
      'subtitle': '2020 | Company',
      'price': '\$150',
      'isFavorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(27.0, 54.0, 27.0, 0.0),
          child: Column(
            children: [
              ProfileHeader(
                imageUrl:
                'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
                username: 'Hey Haider',
                welcomeText: 'Welcome Back!',
                onHamburgerTap: () {
                  Navigator.pushReplacementNamed(context,Routes.sideBar);
                },
              ),
              const SizedBox(height: 25),
              const CustomSearchBar(),
              const SizedBox(height: 25),
              SectionHeader(
                title: "New Arrival",
                actionText: "View more",
                onActionTap: () {
                  // Handle tap action
                },
              ),
              const SizedBox(height: 20),
              ProductListView(products: products),
              SizedBox(height: 20.0),
              SectionHeader(
                title: "Recently View",
                actionText: "View more",
                onActionTap: () {
                  // Handle view more tap
                },
              ),
              const SizedBox(height: 20),
              ProductListView(products: products),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBarWithSvg(),
    );
  }
}
