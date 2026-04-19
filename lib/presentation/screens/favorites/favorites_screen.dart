// lib/presentation/screens/favorites/favorites_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/favorites_provider.dart';
import '../../widgets/common/product_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favProv = context.watch<FavoritesProvider>();
    final favorites = favProv.favorites;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text('Wishlist (${favorites.length})')),
      body: favorites.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border_rounded,
                      size: 80, color: AppColors.lightGrey),
                  const SizedBox(height: 16),
                  const Text('No favorites yet',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary)),
                  const SizedBox(height: 8),
                  const Text('Tap the heart icon on any product to save it here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.textHint, fontSize: 13)),
                ],
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemCount: favorites.length,
              itemBuilder: (_, i) =>
                  ProductCard(product: favorites[i], width: double.infinity),
            ),
    );
  }
}
