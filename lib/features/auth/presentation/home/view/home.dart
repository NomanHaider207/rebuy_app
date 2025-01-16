import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/components/custom_navbar.dart';

import '../../../../../constants/image_assets/assets.dart';

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
              const SearchBar(),
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


class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String username;
  final String welcomeText;
  final VoidCallback onHamburgerTap;

  const ProfileHeader({
    required this.imageUrl,
    required this.username,
    required this.welcomeText,
    required this.onHamburgerTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(width: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 210.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    softWrap: true,
                    style: GoogleFonts.firaSans(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,  // Adds the ellipsis (...) when the text overflows
                    maxLines: 1,
                  ),
                  Text(
                    welcomeText,
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFF5A5F),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 25.0,),
            GestureDetector(
              onTap: onHamburgerTap,
              child: SvgPicture.asset(
                Assets.hamburger,
                width: 33.0,
                height: 33.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search for books, guitars and more...',
        hintStyle: GoogleFonts.cairo(
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF828282),
        ),
        suffixIcon: const Icon(
          Icons.search,
          size: 26.0,
          color: Color(0xFF999999),
        ),
        filled: true,
        fillColor: const Color(0xFFDEDEDE),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback onActionTap;

  const SectionHeader({
    required this.title,
    required this.actionText,
    required this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.firaSans(
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
            color: const Color(0xFF3C3C3C),
          ),
        ),
        GestureDetector(
          onTap: onActionTap,
          child: Text(
            actionText,
            style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
              color: const Color(0xFF898989),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  final bool isFavorite;

  const ProductCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 268.0, // Width of the card
      height: 246.0, // Height to match the requirement
      margin: const EdgeInsets.only(right: 10.0), // Space between the items
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  imageUrl,
                  height: 185.0,
                  width: 268.0,
                  fit: BoxFit.cover,
                ),
                if (isFavorite)
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Icon(Icons.favorite, color: Colors.red),
                  ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          title,
                          style: GoogleFonts.firaSans(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis, // Ensures text does not overflow
                        ),
                        const SizedBox(height: 2.0),  // Adjust spacing
                        // Subtitle
                        Text(
                          subtitle,
                          style: GoogleFonts.firaSans(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFC1839F),
                          ),
                          overflow: TextOverflow.ellipsis, // For subtitle to avoid overflow
                        ),
                      ],
                    ),
                  ),
                  // Price
                  Text(
                    price,
                    style: GoogleFonts.firaSans(
                      fontSize: 24.0, // Slightly reduced font size to avoid overflow
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
