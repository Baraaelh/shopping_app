// lib/data/models/user_model.dart

class UserModel {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? avatarPath;
  final String? address;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    this.avatarPath,
    this.address,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? avatarPath,
    String? address,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      avatarPath: avatarPath ?? this.avatarPath,
      address: address ?? this.address,
    );
  }
}
