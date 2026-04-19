// lib/presentation/screens/checkout/checkout_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/theme/app_theme.dart';
import '../../../providers/auth_provider.dart';
import '../../../providers/cart_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _step = 0; // 0=payment, 1=address, 2=review
  String _paymentMethod = 'Credit Card';
  bool _isPlacing = false;

  final _addressCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    final user = context.read<AuthProvider>().user;
    _nameCtrl.text = user?.name ?? '';
    _emailCtrl.text = user?.email ?? '';
    _addressCtrl.text = user?.address ?? '';
  }

  @override
  void dispose() {
    _addressCtrl.dispose();
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => _step > 0
              ? setState(() => _step--)
              : Navigator.pop(context),
        ),
        title: Text(['Payment', 'Delivery Info', 'Review Order'][_step]),
      ),
      body: Column(
        children: [
          // ── Step Indicator ────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: List.generate(3, (i) {
                final done = i < _step;
                final active = i == _step;
                return Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: done || active
                              ? AppColors.primary
                              : AppColors.lightGrey,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: done
                              ? const Icon(Icons.check,
                                  color: AppColors.white, size: 16)
                              : Text('${i + 1}',
                                  style: TextStyle(
                                      color: active
                                          ? AppColors.white
                                          : AppColors.grey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12)),
                        ),
                      ),
                      if (i < 2)
                        Expanded(
                          child: Container(
                            height: 2,
                            color: done
                                ? AppColors.primary
                                : AppColors.lightGrey,
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: [
                _paymentStep(),
                _addressStep(),
                _reviewStep(cart),
              ][_step],
            ),
          ),

          // ── Bottom Button ─────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
            child: ElevatedButton(
              onPressed: _isPlacing ? null : _handleNext,
              child: _isPlacing
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                          color: Colors.white, strokeWidth: 2))
                  : Text(_step == 2 ? 'Confirm Order' : 'Continue'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _paymentStep() => Column(
        children: AppConstants.paymentMethods.map((m) {
          final isSelected = m == _paymentMethod;
          return GestureDetector(
            onTap: () => setState(() => _paymentMethod = m),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.divider,
                    width: isSelected ? 2 : 1),
              ),
              child: Row(
                children: [
                  Icon(
                    m == 'Credit Card'
                        ? Icons.credit_card_rounded
                        : m == 'Cash on Delivery'
                            ? Icons.payments_outlined
                            : Icons.account_balance_wallet_outlined,
                    color: isSelected ? AppColors.primary : AppColors.grey,
                  ),
                  const SizedBox(width: 12),
                  Text(m,
                      style: TextStyle(
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.textPrimary)),
                  const Spacer(),
                  if (isSelected)
                    const Icon(Icons.check_circle_rounded,
                        color: AppColors.primary),
                ],
              ),
            ),
          );
        }).toList(),
      );

  Widget _addressStep() => Column(
        children: [
          TextField(
            controller: _nameCtrl,
            decoration: const InputDecoration(
                hintText: 'Full Name',
                prefixIcon:
                    Icon(Icons.person_outline, color: AppColors.grey)),
          ),
          const SizedBox(height: 14),
          TextField(
            controller: _emailCtrl,
            decoration: const InputDecoration(
                hintText: 'Email',
                prefixIcon:
                    Icon(Icons.email_outlined, color: AppColors.grey)),
          ),
          const SizedBox(height: 14),
          TextField(
            controller: _addressCtrl,
            maxLines: 3,
            decoration: const InputDecoration(
                hintText: 'Delivery Address',
                prefixIcon:
                    Icon(Icons.location_on_outlined, color: AppColors.grey)),
          ),
        ],
      );

  Widget _reviewStep(CartProvider cart) => Column(
        children: [
          ...cart.items.map((item) => Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(item.product.imagePath,
                          width: 56,
                          height: 56,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                              width: 56,
                              height: 56,
                              color: AppColors.lightGrey)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.product.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600)),
                          Text(
                              '${item.selectedSize} · ${item.selectedColor} · x${item.quantity}',
                              style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 12)),
                        ],
                      ),
                    ),
                    Text('\$${item.totalPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary)),
                  ],
                ),
              )),
          const Divider(height: 24),
          _summaryRow('Subtotal', '\$${cart.subtotal.toStringAsFixed(2)}'),
          _summaryRow('Shipping',
              cart.shippingFee == 0 ? 'FREE' : '\$${cart.shippingFee.toStringAsFixed(2)}'),
          _summaryRow('Payment', _paymentMethod),
          const Divider(height: 24),
          _summaryRow('Total', '\$${cart.total.toStringAsFixed(2)}',
              bold: true),
          const SizedBox(height: 8),
        ],
      );

  Widget _summaryRow(String label, String value, {bool bold = false}) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: TextStyle(
                    color: bold
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                    fontWeight: bold ? FontWeight.w700 : FontWeight.w400)),
            Text(value,
                style: TextStyle(
                    color: bold ? AppColors.textPrimary : AppColors.textSecondary,
                    fontWeight: bold ? FontWeight.w700 : FontWeight.w500)),
          ],
        ),
      );

  Future<void> _handleNext() async {
    if (_step < 2) {
      setState(() => _step++);
    } else {
      setState(() => _isPlacing = true);
      await Future.delayed(const Duration(seconds: 2));
      context.read<CartProvider>().clearCart();
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/order-success');
      }
    }
  }
}
