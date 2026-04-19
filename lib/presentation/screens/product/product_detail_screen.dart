// lib/presentation/screens/product/product_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/cart_provider.dart';
import '../../../providers/favorites_provider.dart';
import '../../../providers/products_provider.dart';
import '../../../data/models/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String? _selectedSize;
  String? _selectedColor;
  int _qty = 1;

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as int;
    final product =
        context.read<ProductsProvider>().getById(productId);

    if (product == null) {
      return const Scaffold(body: Center(child: Text('Product not found')));
    }

    _selectedSize ??= product.sizes.first;
    _selectedColor ??= product.colors.first;

    final favProv = context.watch<FavoritesProvider>();
    final isFav = favProv.isFavorite(product.id);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // ── Hero Image ──────────────────────────────────────
              SliverAppBar(
                expandedHeight: 360,
                pinned: true,
                backgroundColor: AppColors.white,
                leading: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_back_ios_new_rounded,
                        color: AppColors.textPrimary, size: 18),
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () => favProv.toggle(product),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: AppColors.white, shape: BoxShape.circle),
                      child: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? AppColors.error : AppColors.grey),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    product.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: AppColors.lightGrey,
                      child: const Icon(Icons.image_not_supported_outlined,
                          size: 80, color: AppColors.grey),
                    ),
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(28)),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Name & Rating ─────────────────────────────
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(product.name,
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textPrimary)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.star_rounded,
                                    color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text('${product.rating}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text('${product.reviewCount} reviews',
                          style: const TextStyle(
                              color: AppColors.textSecondary, fontSize: 13)),
                      const SizedBox(height: 16),

                      // ── Price ──────────────────────────────────────
                      Row(
                        children: [
                          Text('\$${product.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary)),
                          if (product.hasDiscount) ...[
                            const SizedBox(width: 10),
                            Text(
                                '\$${product.oldPrice!.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: AppColors.grey,
                                    decoration: TextDecoration.lineThrough)),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: AppColors.error.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                  '-${product.discountPercent.toInt()}%',
                                  style: const TextStyle(
                                      color: AppColors.error,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 24),

                      // ── Size ──────────────────────────────────────
                      const Text('Size',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 10,
                        children: product.sizes.map((s) {
                          final isSelected = s == _selectedSize;
                          return GestureDetector(
                            onTap: () =>
                                setState(() => _selectedSize = s),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              width: 46,
                              height: 46,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primary
                                    : AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(12),
                                border: isSelected
                                    ? null
                                    : Border.all(
                                        color: AppColors.divider),
                              ),
                              child: Text(s,
                                  style: TextStyle(
                                      color: isSelected
                                          ? AppColors.white
                                          : AppColors.textPrimary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13)),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 24),

                      // ── Color ─────────────────────────────────────
                      const Text('Color',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 10,
                        children: product.colors.map((c) {
                          final isSelected = c == _selectedColor;
                          return GestureDetector(
                            onTap: () =>
                                setState(() => _selectedColor = c),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 8),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primary
                                    : AppColors.lightGrey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(c,
                                  style: TextStyle(
                                      color: isSelected
                                          ? AppColors.white
                                          : AppColors.textSecondary,
                                      fontSize: 13,
                                      fontWeight: isSelected
                                          ? FontWeight.w600
                                          : FontWeight.w400)),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 24),

                      // ── Description ───────────────────────────────
                      const Text('Description',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 8),
                      Text(product.description,
                          style: const TextStyle(
                              color: AppColors.textSecondary,
                              fontSize: 14,
                              height: 1.6)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ── Bottom Bar ───────────────────────────────────────────
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
              decoration: const BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 16,
                      offset: Offset(0, -4))
                ],
              ),
              child: Row(
                children: [
                  // Quantity
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (_qty > 1) setState(() => _qty--);
                          },
                          icon: const Icon(Icons.remove, size: 18),
                        ),
                        Text('$_qty',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                        IconButton(
                          onPressed: () => setState(() => _qty++),
                          icon: const Icon(Icons.add, size: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        for (int i = 0; i < _qty; i++) {
                          context.read<CartProvider>().addItem(
                                product,
                                size: _selectedSize!,
                                color: _selectedColor!,
                              );
                        }
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Added to cart!'),
                            backgroundColor: AppColors.primary,
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: const Text('Add to Cart'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
