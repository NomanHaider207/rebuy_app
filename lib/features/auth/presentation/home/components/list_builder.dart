import 'package:flutter/material.dart';
import 'package:rebuy/features/auth/presentation/home/components/product_card.dart';

class ProductListView extends StatelessWidget {
  final List<Map<String, dynamic>> products;

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
          final product = products[index];
          return Container(
            margin: const EdgeInsets.only(right: 10.0),
            color: Colors.transparent,
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
    );
  }
}
