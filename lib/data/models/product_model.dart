// lib/data/models/product_model.dart

class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final double? oldPrice;
  final double rating;
  final int reviewCount;
  final String imagePath; // local asset path
  final String category;
  final List<String> sizes;
  final List<String> colors;
  final bool isFavorite;
  final bool isBestSeller;
  final bool isNew;
  final int stock;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.oldPrice,
    required this.rating,
    required this.reviewCount,
    required this.imagePath,
    required this.category,
    required this.sizes,
    required this.colors,
    this.isFavorite = false,
    this.isBestSeller = false,
    this.isNew = false,
    required this.stock,
  });

  double get discountPercent {
    if (oldPrice == null || oldPrice == 0) return 0;
    return ((oldPrice! - price) / oldPrice! * 100).roundToDouble();
  }

  bool get hasDiscount => oldPrice != null && oldPrice! > price;

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    double? oldPrice,
    double? rating,
    int? reviewCount,
    String? imagePath,
    String? category,
    List<String>? sizes,
    List<String>? colors,
    bool? isFavorite,
    bool? isBestSeller,
    bool? isNew,
    int? stock,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      imagePath: imagePath ?? this.imagePath,
      category: category ?? this.category,
      sizes: sizes ?? this.sizes,
      colors: colors ?? this.colors,
      isFavorite: isFavorite ?? this.isFavorite,
      isBestSeller: isBestSeller ?? this.isBestSeller,
      isNew: isNew ?? this.isNew,
      stock: stock ?? this.stock,
    );
  }
}

// ─── Dummy Data ──────────────────────────────────────────────────────────────
class ProductDummyData {
  static List<ProductModel> get products => [
        ProductModel(
          id: 1,
          name: 'Red Floral Dress',
          description:
              'A stunning red floral dress perfect for summer outings. Made from breathable cotton blend fabric with a flattering A-line silhouette.',
          price: 49.99,
          oldPrice: 79.99,
          rating: 4.8,
          reviewCount: 124,
          imagePath: 'assets/images/products/dress_red.png',
          category: 'Clothing',
          sizes: ['XS', 'S', 'M', 'L', 'XL'],
          colors: ['Red', 'Blue', 'Green'],
          isFavorite: false,
          isBestSeller: true,
          isNew: false,
          stock: 15,
        ),
        ProductModel(
          id: 2,
          name: 'Brown Leather Bag',
          description:
              'Genuine leather handbag with multiple compartments. Elegant and functional for everyday use.',
          price: 89.99,
          oldPrice: 120.00,
          rating: 4.6,
          reviewCount: 87,
          imagePath: 'assets/images/products/bag_brown.png',
          category: 'Bags',
          sizes: ['One Size'],
          colors: ['Brown', 'Black', 'Tan'],
          isFavorite: true,
          isBestSeller: true,
          isNew: false,
          stock: 8,
        ),
        ProductModel(
          id: 3,
          name: 'White Oversized Jacket',
          description:
              'Trendy oversized jacket with a minimalist design. Perfect for layering in cooler weather.',
          price: 65.00,
          rating: 4.5,
          reviewCount: 56,
          imagePath: 'assets/images/products/jacket_white.png',
          category: 'Clothing',
          sizes: ['S', 'M', 'L', 'XL'],
          colors: ['White', 'Beige', 'Grey'],
          isFavorite: false,
          isBestSeller: false,
          isNew: true,
          stock: 20,
        ),
        ProductModel(
          id: 4,
          name: 'Pink Running Shoes',
          description:
              'Lightweight and comfortable running shoes with excellent cushioning and arch support.',
          price: 75.99,
          oldPrice: 99.99,
          rating: 4.9,
          reviewCount: 203,
          imagePath: 'assets/images/products/shoes_pink.png',
          category: 'Shoes',
          sizes: ['36', '37', '38', '39', '40', '41'],
          colors: ['Pink', 'White', 'Black'],
          isFavorite: false,
          isBestSeller: true,
          isNew: false,
          stock: 30,
        ),
        ProductModel(
          id: 5,
          name: 'Blue Denim Shirt',
          description:
              'Classic denim shirt with a relaxed fit. Versatile piece that pairs well with any outfit.',
          price: 35.00,
          rating: 4.3,
          reviewCount: 45,
          imagePath: 'assets/images/products/shirt_blue.png',
          category: 'Clothing',
          sizes: ['XS', 'S', 'M', 'L', 'XL', 'XXL'],
          colors: ['Blue', 'Light Blue'],
          isFavorite: false,
          isBestSeller: false,
          isNew: true,
          stock: 25,
        ),
        ProductModel(
          id: 6,
          name: 'Black Slim Pants',
          description:
              'Elegant slim-fit pants in classic black. Perfect for both casual and semi-formal occasions.',
          price: 55.00,
          oldPrice: 70.00,
          rating: 4.7,
          reviewCount: 98,
          imagePath: 'assets/images/products/pants_black.png',
          category: 'Clothing',
          sizes: ['XS', 'S', 'M', 'L', 'XL'],
          colors: ['Black', 'Navy', 'Grey'],
          isFavorite: true,
          isBestSeller: false,
          isNew: false,
          stock: 18,
        ),
        ProductModel(
          id: 7,
          name: 'Beige Sun Hat',
          description:
              'Wide-brim sun hat in natural beige. UV protection with a stylish boho aesthetic.',
          price: 22.99,
          rating: 4.4,
          reviewCount: 34,
          imagePath: 'assets/images/products/hat_beige.png',
          category: 'Accessories',
          sizes: ['One Size'],
          colors: ['Beige', 'White', 'Brown'],
          isFavorite: false,
          isBestSeller: false,
          isNew: true,
          stock: 40,
        ),
        ProductModel(
          id: 8,
          name: 'Classic Black Sunglasses',
          description:
              'Timeless black sunglasses with 100% UV400 protection. Lightweight frame for all-day comfort.',
          price: 29.99,
          oldPrice: 45.00,
          rating: 4.6,
          reviewCount: 76,
          imagePath: 'assets/images/products/sunglasses_black.png',
          category: 'Accessories',
          sizes: ['One Size'],
          colors: ['Black', 'Tortoise', 'Gold'],
          isFavorite: false,
          isBestSeller: true,
          isNew: false,
          stock: 50,
        ),
        ProductModel(
          id: 9,
          name: 'Gold Analog Watch',
          description:
              'Elegant gold-tone analog watch with a genuine leather strap. Water resistant up to 30m.',
          price: 129.99,
          oldPrice: 180.00,
          rating: 4.8,
          reviewCount: 142,
          imagePath: 'assets/images/products/watch_gold.png',
          category: 'Accessories',
          sizes: ['One Size'],
          colors: ['Gold', 'Silver', 'Rose Gold'],
          isFavorite: true,
          isBestSeller: true,
          isNew: false,
          stock: 10,
        ),
        ProductModel(
          id: 10,
          name: 'White Classic Sneakers',
          description:
              'Clean and minimal white sneakers. The perfect everyday shoe that goes with everything.',
          price: 59.99,
          rating: 4.7,
          reviewCount: 189,
          imagePath: 'assets/images/products/sneakers_white.png',
          category: 'Shoes',
          sizes: ['36', '37', '38', '39', '40', '41', '42', '43'],
          colors: ['White', 'White/Black'],
          isFavorite: false,
          isBestSeller: true,
          isNew: true,
          stock: 35,
        ),
        ProductModel(
          id: 11,
          name: 'Floral Chiffon Blouse',
          description:
              'Light and airy floral blouse in chiffon fabric. Romantic style for spring and summer.',
          price: 38.00,
          oldPrice: 55.00,
          rating: 4.5,
          reviewCount: 63,
          imagePath: 'assets/images/products/blouse_floral.png',
          category: 'Clothing',
          sizes: ['XS', 'S', 'M', 'L'],
          colors: ['Pink/White', 'Blue/White'],
          isFavorite: false,
          isBestSeller: false,
          isNew: false,
          stock: 22,
        ),
        ProductModel(
          id: 12,
          name: 'Grey Wool Coat',
          description:
              'Premium wool blend coat in sophisticated grey. Tailored fit with timeless design.',
          price: 199.99,
          oldPrice: 280.00,
          rating: 4.9,
          reviewCount: 57,
          imagePath: 'assets/images/products/coat_grey.png',
          category: 'Clothing',
          sizes: ['S', 'M', 'L', 'XL'],
          colors: ['Grey', 'Camel', 'Black'],
          isFavorite: false,
          isBestSeller: true,
          isNew: false,
          stock: 7,
        ),
      ];
}
