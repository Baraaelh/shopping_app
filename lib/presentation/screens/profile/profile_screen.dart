// lib/presentation/screens/profile/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/auth_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AuthProvider>().user;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('My Profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // ── Avatar ──────────────────────────────────────────────
          Center(
            child: Stack(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightGrey,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      user?.avatarPath ?? '',
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(
                          Icons.person_rounded,
                          size: 50,
                          color: AppColors.grey),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: const BoxDecoration(
                        color: AppColors.primary, shape: BoxShape.circle),
                    child: const Icon(Icons.camera_alt_outlined,
                        color: AppColors.white, size: 16),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(user?.name ?? 'Guest',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700)),
          ),
          Center(
            child: Text(user?.email ?? '',
                style: const TextStyle(
                    color: AppColors.textSecondary, fontSize: 13)),
          ),
          const SizedBox(height: 28),

          // ── Menu Items ───────────────────────────────────────────
          _section('Account', [
            _tile(Icons.person_outline, 'Edit Profile', onTap: () {}),
            _tile(Icons.location_on_outlined, 'My Addresses', onTap: () {}),
            _tile(Icons.payment_outlined, 'Payment Methods', onTap: () {}),
          ]),
          const SizedBox(height: 16),
          _section('Orders', [
            _tile(Icons.shopping_bag_outlined, 'My Orders', onTap: () {}),
            _tile(Icons.favorite_border_rounded, 'Wishlist', onTap: () {}),
            _tile(Icons.rate_review_outlined, 'My Reviews', onTap: () {}),
          ]),
          const SizedBox(height: 16),
          _section('Support', [
            _tile(Icons.help_outline_rounded, 'Help & Support',
                onTap: () {}),
            _tile(Icons.privacy_tip_outlined, 'Privacy Policy',
                onTap: () {}),
            _tile(Icons.info_outline_rounded, 'About App', onTap: () {}),
          ]),
          const SizedBox(height: 16),

          // ── Logout ────────────────────────────────────────────────
          GestureDetector(
            onTap: () {
              context.read<AuthProvider>().logout();
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.error.withOpacity(0.08),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout_rounded, color: AppColors.error),
                  SizedBox(width: 10),
                  Text('Logout',
                      style: TextStyle(
                          color: AppColors.error,
                          fontWeight: FontWeight.w600,
                          fontSize: 15)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _section(String title, List<Widget> tiles) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 10),
            child: Text(title,
                style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textSecondary,
                    letterSpacing: 0.5)),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.black38, blurRadius: 6)
              ],
            ),
            child: Column(children: tiles),
          ),
        ],
      );

  Widget _tile(IconData icon, String label, {VoidCallback? onTap}) =>
      ListTile(
        onTap: onTap,
        leading: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.primary, size: 20),
        ),
        title: Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.chevron_right_rounded,
            color: AppColors.grey, size: 20),
      );
}
