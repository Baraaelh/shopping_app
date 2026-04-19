// lib/providers/auth_provider.dart
import 'package:flutter/material.dart';
import '../data/models/user_model.dart';

enum AuthStatus { initial, loading, authenticated, unauthenticated, error }

class AuthProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.initial;
  UserModel? _user;
  String? _errorMessage;

  AuthStatus get status => _status;
  UserModel? get user => _user;
  String? get errorMessage => _errorMessage;
  bool get isAuthenticated => _status == AuthStatus.authenticated;

  // ── Login ────────────────────────────────────────────────────────────────
  Future<bool> login(String email, String password) async {
    _status = AuthStatus.loading;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2)); // simulate API call

    // Dummy validation
    if (email.isNotEmpty && password.length >= 6) {
      _user = UserModel(
        id: '1',
        name: 'Laisse',
        email: email,
        phone: '+970 599 123 456',
        avatarPath: 'assets/images/profile/avatar.png',
        address: '123 Main St, Ramallah, Palestine',
      );
      _status = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } else {
      _errorMessage = 'Invalid email or password';
      _status = AuthStatus.error;
      notifyListeners();
      return false;
    }
  }

  // ── Register ─────────────────────────────────────────────────────────────
  Future<bool> register(String name, String email, String password) async {
    _status = AuthStatus.loading;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    if (name.isNotEmpty && email.isNotEmpty && password.length >= 6) {
      _user = UserModel(
        id: '1',
        name: name,
        email: email,
        avatarPath: 'assets/images/profile/avatar.png',
      );
      _status = AuthStatus.authenticated;
      notifyListeners();
      return true;
    } else {
      _errorMessage = 'Please fill all fields correctly';
      _status = AuthStatus.error;
      notifyListeners();
      return false;
    }
  }

  // ── Forgot Password ───────────────────────────────────────────────────────
  Future<bool> forgotPassword(String email) async {
    _status = AuthStatus.loading;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    _status = AuthStatus.unauthenticated;
    notifyListeners();
    return true;
  }

  // ── Logout ────────────────────────────────────────────────────────────────
  void logout() {
    _user = null;
    _status = AuthStatus.unauthenticated;
    notifyListeners();
  }

  // ── Update Profile ────────────────────────────────────────────────────────
  void updateProfile({String? name, String? phone, String? address}) {
    if (_user != null) {
      _user = _user!.copyWith(
        name: name ?? _user!.name,
        phone: phone ?? _user!.phone,
        address: address ?? _user!.address,
      );
      notifyListeners();
    }
  }
}
