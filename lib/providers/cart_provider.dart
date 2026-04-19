// lib/providers/cart_provider.dart
import 'package:flutter/material.dart';
import '../data/models/cart_model.dart';
import '../data/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;
  int get itemCount => _items.length;
  int get totalQuantity => _items.fold(0, (sum, item) => sum + item.quantity);

  double get subtotal =>
      _items.fold(0.0, (sum, item) => sum + item.totalPrice);

  double get shippingFee => subtotal > 100 ? 0 : 9.99;

  double get total => subtotal + shippingFee;

  bool isInCart(int productId) =>
      _items.any((item) => item.product.id == productId);

  // ── Add to Cart ───────────────────────────────────────────────────────────
  void addItem(ProductModel product,
      {String size = 'M', String color = 'Default'}) {
    final existingIndex = _items.indexWhere(
      (item) =>
          item.product.id == product.id &&
          item.selectedSize == size &&
          item.selectedColor == color,
    );

    if (existingIndex >= 0) {
      _items[existingIndex] = _items[existingIndex].copyWith(
        quantity: _items[existingIndex].quantity + 1,
      );
    } else {
      _items.add(CartItem(
        product: product,
        quantity: 1,
        selectedSize: size,
        selectedColor: color,
      ));
    }
    notifyListeners();
  }

  // ── Remove from Cart ──────────────────────────────────────────────────────
  void removeItem(int productId, String size, String color) {
    _items.removeWhere(
      (item) =>
          item.product.id == productId &&
          item.selectedSize == size &&
          item.selectedColor == color,
    );
    notifyListeners();
  }

  // ── Update Quantity ───────────────────────────────────────────────────────
  void updateQuantity(int productId, String size, String color, int quantity) {
    final index = _items.indexWhere(
      (item) =>
          item.product.id == productId &&
          item.selectedSize == size &&
          item.selectedColor == color,
    );
    if (index >= 0) {
      if (quantity <= 0) {
        _items.removeAt(index);
      } else {
        _items[index] = _items[index].copyWith(quantity: quantity);
      }
      notifyListeners();
    }
  }

  // ── Clear Cart ────────────────────────────────────────────────────────────
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
