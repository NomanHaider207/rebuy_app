class Product {
  String id;
  String name;
  String modelYear;
  String company;
  double price;
  bool isFavorite;
  String? imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.modelYear,
    required this.company,
    required this.price,
    required this.isFavorite,
    this.imageUrl,
  });

  // Method to convert map to Product
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      modelYear: map['modelYear'] ?? '',
      company: map['company'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      isFavorite: map['isFavorite'] ?? false,
      imageUrl: map['imageUrl'], // Add imageUrl if it's present in your DB
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'modelYear': modelYear,
      'company': company,
      'price': price,
      'isFavorite': isFavorite,
      'imageUrl': imageUrl,
    };
  }
}
