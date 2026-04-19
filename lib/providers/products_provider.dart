// lib/providers/products_provider.dart
import 'package:flutter/material.dart';
import '../data/models/product_model.dart';

class ProductsProvider extends ChangeNotifier {
  List<ProductModel> _allProducts = [];
  List<ProductModel> _filteredProducts = [];
  bool _isLoading = false;
  String _searchQuery = '';
  String _selectedCategory = 'All';
  String _selectedSort = 'Newest';

  List<ProductModel> get allProducts => _allProducts;
  List<ProductModel> get filteredProducts => _filteredProducts;
  bool get isLoading => _isLoading;
  String get searchQuery => _searchQuery;
  String get selectedCategory => _selectedCategory;
  String get selectedSort => _selectedSort;

  List<ProductModel> get bestSellers =>
      _allProducts.where((p) => p.isBestSeller).toList();

  List<ProductModel> get newArrivals =>
      _allProducts.where((p) => p.isNew).toList();

  List<ProductModel> get onSale =>
      _allProducts.where((p) => p.hasDiscount).toList();

  // ── Load Products ─────────────────────────────────────────────────────────
  Future<void> loadProducts() async {
    _isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 800));
    _allProducts = ProductDummyData.products;
    _filteredProducts = List.from(_allProducts);
    _isLoading = false;
    notifyListeners();
  }

  // ── Toggle Favorite ───────────────────────────────────────────────────────
  void toggleFavorite(int productId) {
    final index = _allProducts.indexWhere((p) => p.id == productId);
    if (index != -1) {
      _allProducts[index] =
          _allProducts[index].copyWith(isFavorite: !_allProducts[index].isFavorite);
      _applyFilters();
    }
  }

  // ── Get Product By ID ─────────────────────────────────────────────────────
  ProductModel? getById(int id) {
    try {
      return _allProducts.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }

  // ── Search ────────────────────────────────────────────────────────────────
  void search(String query) {
    _searchQuery = query;
    _applyFilters();
  }

  // ── Filter By Category ────────────────────────────────────────────────────
  void filterByCategory(String category) {
    _selectedCategory = category;
    _applyFilters();
  }

  // ── Sort ──────────────────────────────────────────────────────────────────
  void sortBy(String sortOption) {
    _selectedSort = sortOption;
    _applyFilters();
  }

  void _applyFilters() {
    var result = List<ProductModel>.from(_allProducts);

    // Category filter
    if (_selectedCategory != 'All') {
      result = result.where((p) => p.category == _selectedCategory).toList();
    }

    // Search filter
    if (_searchQuery.isNotEmpty) {
      result = result
          .where((p) =>
              p.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
              p.category.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }

    // Sort
    switch (_selectedSort) {
      case 'Price: Low to High':
        result.sort((a, b) => a.price.compareTo(b.price));
        break;
      case 'Price: High to Low':
        result.sort((a, b) => b.price.compareTo(a.price));
        break;
      case 'Best Seller':
        result.sort((a, b) => b.reviewCount.compareTo(a.reviewCount));
        break;
      case 'Top Rated':
        result.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      default:
        result.sort((a, b) => b.id.compareTo(a.id));
    }

    _filteredProducts = result;
    notifyListeners();
  }

  List<ProductModel> getByCategory(String category) {
    return _allProducts.where((p) => p.category == category).toList();
  }
}
