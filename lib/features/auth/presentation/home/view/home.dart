import 'package:flutter/material.dart';

import 'package:rebuy/components/custom_navbar.dart';
import 'package:rebuy/features/auth/presentation/home/components/product_card.dart';

import '../../../../../constants/image_assets/assets.dart';
import '../components/profile_header.dart';
import '../components/section_header.dart';
import '../components/profile_header.dart';
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
    // Add more products as required
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
                  // Handle hamburger tap
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
              SizedBox(
                height: 268.0,  // Set the height for the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.zero, // Remove padding from the ListView itself.
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 10.0), // Adds 10.0 spacing between items.
                      color: Colors.transparent, // Set background color to transparent.
                      child: ProductCard(
                        imageUrl: product['imageUrl'],
                        title: product['title'],
                        subtitle: product['subtitle'],
                        price: product['price'],
                        isFavorite: product['isFavorite'],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
              SectionHeader(
                title: "Recently View",
                actionText: "View more",
                onActionTap: () {
                  // Handle view more tap
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 268.0,  // Set the height for the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: EdgeInsets.zero, // Remove padding from the ListView itself.
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 10.0), // Adds 10.0 spacing between items.
                      color: Colors.transparent, // Set background color to transparent.
                      child: ProductCard(
                        imageUrl: product['imageUrl'],
                        title: product['title'],
                        subtitle: product['subtitle'],
                        price: product['price'],
                        isFavorite: product['isFavorite'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBarWithSvg(),
    );
  }
}
