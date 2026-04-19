// lib/data/models/cart_model.dart
import 'product_model.dart';

class CartItem {
  final ProductModel product;
  final int quantity;
  final String selectedSize;
  final String selectedColor;

  CartItem({
    required this.product,
    required this.quantity,
    required this.selectedSize,
    required this.selectedColor,
  });

  double get totalPrice => product.price * quantity;

  CartItem copyWith({
    ProductModel? product,
    int? quantity,
    String? selectedSize,
    String? selectedColor,
  }) {
    return CartItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      selectedSize: selectedSize ?? this.selectedSize,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }
}
