// lib/core/constants/app_constants.dart

class AppConstants {
  // App Info
  static const String appName = 'ShopEase';
  static const String appVersion = '1.0.0';

  // Asset Paths
  static const String imagePath = 'assets/images/';
  static const String productPath = 'assets/images/products/';
  static const String bannerPath = 'assets/images/banners/';

  // Product Images (you will rename your real images to match these names)
  static const List<String> productImages = [
    'dress_red.png',
    'bag_brown.png',
    'jacket_white.png',
    'shoes_pink.png',
    'shirt_blue.png',
    'pants_black.png',
    'hat_beige.png',
    'sunglasses_black.png',
    'watch_gold.png',
    'sneakers_white.png',
    'blouse_floral.png',
    'coat_grey.png',
  ];

  // Banner Images
  static const List<String> bannerImages = [
    'banner_sale.png',
    'banner_new.png',
    'banner_summer.png',
  ];

  // Profile Images
  static const String defaultAvatar = 'assets/images/profile/avatar.png';

  // Categories
  static const List<Map<String, dynamic>> categories = [
    {'id': 1, 'name': 'Clothing', 'icon': '👗'},
    {'id': 2, 'name': 'Shoes', 'icon': '👟'},
    {'id': 3, 'name': 'Bags', 'icon': '👜'},
    {'id': 4, 'name': 'Accessories', 'icon': '💍'},
    {'id': 5, 'name': 'Sports', 'icon': '⚽'},
    {'id': 6, 'name': 'Kids', 'icon': '🧸'},
  ];

  // Sizes
  static const List<String> clothingSizes = ['XS', 'S', 'M', 'L', 'XL', 'XXL'];
  static const List<String> shoeSizes = [
    '36', '37', '38', '39', '40', '41', '42', '43', '44'
  ];

  // Sort Options
  static const List<String> sortOptions = [
    'Newest',
    'Price: Low to High',
    'Price: High to Low',
    'Best Seller',
    'Top Rated',
  ];

  // Payment Methods
  static const List<String> paymentMethods = [
    'Credit Card',
    'Cash on Delivery',
    'PayPal',
  ];

  // Shared Prefs Keys
  static const String keyIsLoggedIn = 'is_logged_in';
  static const String keyUserToken = 'user_token';
  static const String keyUserId = 'user_id';
  static const String keyOnboardingDone = 'onboarding_done';
}
