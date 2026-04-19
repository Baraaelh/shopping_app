// lib/presentation/screens/cart/cart_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Cart (${cart.itemCount})'),
        actions: [
          if (cart.itemCount > 0)
            TextButton(
              onPressed: () => cart.clearCart(),
              child: const Text('Clear',
                  style: TextStyle(color: AppColors.error)),
            ),
        ],
      ),
      body: cart.items.isEmpty
          ? _emptyCart(context)
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: cart.items.length,
                    itemBuilder: (_, i) {
                      final item = cart.items[i];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black38, blurRadius: 6)
                          ],
                        ),
                        child: Row(
                          children: [
                            // Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                item.product.imagePath,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(
                                  width: 80,
                                  height: 80,
                                  color: AppColors.lightGrey,
                                  child: const Icon(
                                      Icons.image_not_supported_outlined,
                                      color: AppColors.grey),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text(item.product.name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14)),
                                  const SizedBox(height: 4),
                                  Text(
                                      '${item.selectedSize} · ${item.selectedColor}',
                                      style: const TextStyle(
                                          color: AppColors.textSecondary,
                                          fontSize: 12)),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          '\$${item.totalPrice.toStringAsFixed(2)}',
                                          style: const TextStyle(
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15)),
                                      Row(
                                        children: [
                                          _qtyBtn(Icons.remove, () {
                                            cart.updateQuantity(
                                                item.product.id,
                                                item.selectedSize,
                                                item.selectedColor,
                                                item.quantity - 1);
                                          }),
                                          Padding(
                                            padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10),
                                            child: Text('${item.quantity}',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ),
                                          _qtyBtn(Icons.add, () {
                                            cart.updateQuantity(
                                                item.product.id,
                                                item.selectedSize,
                                                item.selectedColor,
                                                item.quantity + 1);
                                          }),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // ── Order Summary ──────────────────────────────────
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: Offset(0, -4))
                    ],
                  ),
                  child: Column(
                    children: [
                      _row('Subtotal',
                          '\$${cart.subtotal.toStringAsFixed(2)}'),
                      const SizedBox(height: 8),
                      _row(
                          'Shipping',
                          cart.shippingFee == 0
                              ? 'FREE'
                              : '\$${cart.shippingFee.toStringAsFixed(2)}',
                          valueColor: cart.shippingFee == 0
                              ? AppColors.success
                              : null),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Divider(),
                      ),
                      _row('Total', '\$${cart.total.toStringAsFixed(2)}',
                          bold: true),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/checkout'),
                        child: const Text('Proceed to Checkout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _qtyBtn(IconData icon, VoidCallback onTap) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 16),
        ),
      );

  Widget _row(String label, String value,
          {bool bold = false, Color? valueColor}) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  color: bold ? AppColors.textPrimary : AppColors.textSecondary,
                  fontWeight:
                      bold ? FontWeight.w700 : FontWeight.w400,
                  fontSize: bold ? 16 : 14)),
          Text(value,
              style: TextStyle(
                  color: valueColor ??
                      (bold ? AppColors.textPrimary : AppColors.textSecondary),
                  fontWeight:
                      bold ? FontWeight.w700 : FontWeight.w500,
                  fontSize: bold ? 18 : 14)),
        ],
      );

  Widget _emptyCart(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag_outlined,
                size: 80, color: AppColors.lightGrey),
            const SizedBox(height: 16),
            const Text('Your cart is empty',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary)),
            const SizedBox(height: 8),
            const Text('Start shopping and add items to your cart',
                style: TextStyle(
                    color: AppColors.textHint, fontSize: 13)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(160, 48)),
              child: const Text('Shop Now'),
            ),
          ],
        ),
      );
}
