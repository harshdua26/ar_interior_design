import '../models/furniture_item.dart';

class FurnitureData {
  static List<FurnitureItem> getFurnitureItems() {
    return [
      FurnitureItem(
        id: '1',
        name: 'Modern Sofa',
        category: 'Living Room',
        price: 899.99,
        imageUrl: 'images/furniture/sofa.jpg',
        dimensions: {'width': 220, 'height': 85, 'depth': 95},
      ),
      FurnitureItem(
        id: '2',
        name: 'Dining Table',
        category: 'Dining Room',
        price: 599.99,
        imageUrl: 'images/furniture/dining_table.jpg',
        dimensions: {'width': 180, 'height': 75, 'depth': 90},
      ),
      FurnitureItem(
        id: '3',
        name: 'Bookshelf',
        category: 'Living Room',
        price: 299.99,
        imageUrl: 'images/furniture/bookshelf.jpg',
        dimensions: {'width': 120, 'height': 200, 'depth': 40},
      ),
      FurnitureItem(
        id: '4',
        name: 'Coffee Table',
        category: 'Living Room',
        price: 249.99,
        imageUrl: 'images/furniture/coffee_table.jpg',
        dimensions: {'width': 120, 'height': 45, 'depth': 60},
      ),
      FurnitureItem(
        id: '5',
        name: 'Bed Frame',
        category: 'Bedroom',
        price: 799.99,
        imageUrl: 'images/furniture/bed.jpg',
        dimensions: {'width': 200, 'height': 60, 'depth': 180},
      ),
      FurnitureItem(
        id: '6',
        name: 'Dresser',
        category: 'Bedroom',
        price: 349.99,
        imageUrl: 'images/furniture/dresser.jpg',
        dimensions: {'width': 120, 'height': 80, 'depth': 60},
      ),
    ];
  }
}
