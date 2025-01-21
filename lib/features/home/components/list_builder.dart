import 'package:flutter/material.dart';
import 'package:rebuy/features/home/components/product_card.dart';

import '../../../constants/assets.dart';
import '../contorllers/product.dart'; // Import Product Model

class ProductListView extends StatelessWidget {
  final List<Product> products; // List of Product objects

  const ProductListView({required this.products, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 268.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final product = products[index]; // Fetch product object

          return Container(
            margin: const EdgeInsets.only(right: 10.0),
            color: Colors.transparent,
            child: ProductCard(
              imageUrl: Assets.product, // You can use a default image if `imageUrl` is null
              title: product.name,  // Use name property of the product
              subtitle: '${product.modelYear} | ${product.company}', // Display model year and company as subtitle
              price: '\$${product.price}', // Display price with '$' sign
              isFavorite: product.isFavorite,  // Pass the favorite status
            ),
          );
        },
      ),
    );
  }
}
