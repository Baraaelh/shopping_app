// lib/providers/favorites_provider.dart
import 'package:flutter/material.dart';
import '../data/models/product_model.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<ProductModel> _favorites = [];

  List<ProductModel> get favorites => _favorites;
  int get count => _favorites.length;

  bool isFavorite(int productId) =>
      _favorites.any((p) => p.id == productId);

  void toggle(ProductModel product) {
    if (isFavorite(product.id)) {
      _favorites.removeWhere((p) => p.id == product.id);
    } else {
      _favorites.add(product);
    }
    notifyListeners();
  }

  void remove(int productId) {
    _favorites.removeWhere((p) => p.id == productId);
    notifyListeners();
  }
}
