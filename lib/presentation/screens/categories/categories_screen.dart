// lib/presentation/screens/categories/categories_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/products_provider.dart';
import '../../widgets/common/product_card.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  String _selected = 'All';
  String _sort = 'Newest';

  final List<Map<String, String>> _cats = [
    {'name': 'All', 'icon': '🛍️'},
    ...AppConstants.categories.map((c) => {
          'name': c['name'] as String,
          'icon': c['icon'] as String,
        }),
  ];

  @override
  Widget build(BuildContext context) {
    final products = context.watch<ProductsProvider>();
    final shown = _selected == 'All'
        ? products.filteredProducts
        : products.getByCategory(_selected);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Discover for You'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // ── Category Tabs ───────────────────────────────────────
          SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _cats.length,
              itemBuilder: (_, i) {
                final cat = _cats[i];
                final isActive = cat['name'] == _selected;
                return GestureDetector(
                  onTap: () {
                    setState(() => _selected = cat['name']!);
                    products.filterByCategory(
                        cat['name'] == 'All' ? '' : cat['name']!);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.only(right: 10, bottom: 6),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isActive ? AppColors.primary : AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: isActive
                                ? AppColors.primary.withOpacity(0.3)
                                : Colors.black38,
                            blurRadius: 6)
                      ],
                    ),
                    child: Text(
                      '${cat['icon']}  ${cat['name']}',
                      style: TextStyle(
                        color: isActive ? AppColors.white : AppColors.textSecondary,
                        fontSize: 13,
                        fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // ── Sort & Filter Row ───────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${shown.length} Products',
                    style: const TextStyle(
                        color: AppColors.textSecondary, fontSize: 13)),
                PopupMenuButton<String>(
                  onSelected: (v) {
                    setState(() => _sort = v);
                    products.sortBy(v);
                  },
                  itemBuilder: (_) => AppConstants.sortOptions
                      .map((s) => PopupMenuItem(value: s, child: Text(s)))
                      .toList(),
                  child: Row(
                    children: [
                      const Icon(Icons.sort_rounded,
                          color: AppColors.primary, size: 20),
                      const SizedBox(width: 6),
                      Text(_sort,
                          style: const TextStyle(
                              color: AppColors.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ── Product Grid ────────────────────────────────────────
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
              ),
              itemCount: shown.length,
              itemBuilder: (_, i) =>
                  ProductCard(product: shown[i], width: double.infinity),
            ),
          ),
        ],
      ),
    );
  }
}
