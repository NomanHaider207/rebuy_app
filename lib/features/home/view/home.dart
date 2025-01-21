import 'package:flutter/material.dart';
import 'package:rebuy/components/custom_navbar.dart';
import '../../../../../constants/assets.dart';
import '../../../../../constants/routes.dart';
import '../../auth/presentation/signup/contoller/user/user_mode.dart';
import '../components/list_builder.dart';
import '../components/profile_header.dart';
import '../components/section_header.dart';
import '../../../components/search_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../contorllers/firestore_services.dart';
import '../contorllers/product.dart';
import '../contorllers/productservice.dart'; // Import product service

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? userName;
  List<Product> products = [];  // To store the products

  @override
  void initState() {
    super.initState();
    _fetchUserData();
    fetchProducts();
  }

  // Fetch user data
  Future<void> _fetchUserData() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;

    if (uid != null) {
      AppUser? user = await AppUserData().getUserData(uid);

      if (user != null) {
        setState(() {
          userName = user.name;
        });
      } else {
        print("User not found in Firestore.");
      }
    }
  }

  // Fetch products from Firestore
  Future<void> fetchProducts() async {
    ProductService firestoreService = ProductService();
    List<Product> fetchedProducts = await firestoreService.fetchProducts();
    setState(() {
      products = fetchedProducts;
    });
  }

  // Add products when user signs up
  Future<void> _addProductsOnSignUp() async {
    await ProductService().addProducts();  // Add 10 sample products
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(27.0, 54.0, 27.0, 0.0),
          child: Column(
            children: [
              ProfileHeader(
                imageUrl: 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
                username: userName ?? 'Loading...',
                welcomeText: 'Welcome Back!',
                onHamburgerTap: () {
                  Navigator.pushReplacementNamed(context, Routes.sideBar);
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
