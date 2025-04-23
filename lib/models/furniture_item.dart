class FurnitureItem {
  final String id;
  final String name;
  final String category;
  final double price;
  final String imageUrl;
  final Map<String, double> dimensions;

  FurnitureItem({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.dimensions,
  });

  factory FurnitureItem.fromJson(Map<String, dynamic> json) {
    return FurnitureItem(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      dimensions: Map<String, double>.from(json['dimensions']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'price': price,
      'imageUrl': imageUrl,
      'dimensions': dimensions,
    };
  }
} 