import 'package:cloud_firestore/cloud_firestore.dart';
import 'product.dart';  // Import the Product class

class ProductService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Add products to Firestore
  Future<void> addProducts() async {
    CollectionReference productsRef = _db.collection('products');

    // Add 10 sample products
    List<Product> products = [
      Product(id: '1', name: 'Product 1', modelYear: '2020', company: 'Company A', price: 100.0, isFavorite: true),
      Product(id: '2', name: 'Product 2', modelYear: '2019', company: 'Company B', price: 120.0, isFavorite: false),
      Product(id: '3', name: 'Product 3', modelYear: '2021', company: 'Company C', price: 200.0, isFavorite: true),
      Product(id: '4', name: 'Product 4', modelYear: '2020', company: 'Company A', price: 180.0, isFavorite: false),
      Product(id: '5', name: 'Product 5', modelYear: '2021', company: 'Company B', price: 250.0, isFavorite: true),
      Product(id: '6', name: 'Product 6', modelYear: '2019', company: 'Company A', price: 300.0, isFavorite: false),
      Product(id: '7', name: 'Product 7', modelYear: '2022', company: 'Company C', price: 320.0, isFavorite: true),
      Product(id: '8', name: 'Product 8', modelYear: '2020', company: 'Company A', price: 50.0, isFavorite: false),
      Product(id: '9', name: 'Product 9', modelYear: '2021', company: 'Company B', price: 400.0, isFavorite: true),
      Product(id: '10', name: 'Product 10', modelYear: '2022', company: 'Company C', price: 500.0, isFavorite: false),
    ];

    // Add each product to Firestore
    for (var product in products) {
      await productsRef.add(product.toMap());
    }
  }

  // Fetch products from Firestore
  Future<List<Product>> fetchProducts() async {
    // Getting data from Firestore
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('products').get();
    List<Product> products = snapshot.docs.map((doc) {
      return Product.fromMap(doc.data() as Map<String, dynamic>);
    }).toList();

    return products;
  }
}
