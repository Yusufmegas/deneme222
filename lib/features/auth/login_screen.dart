import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/gradient_header.dart';
import '../../widgets/primary_button.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GradientHeader(
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Araç Yönetim Platformu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Telefon Numaranızı Girin',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        child: const Text(
                          '+90',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      hintText: '532 123 45 67',
                    ),
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    label: 'GİRİŞ YAP',
                    onPressed: () {
                      Navigator.pushNamed(context, OtpScreen.routeName);
                    },
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Devam ederek KVKK ve Kullanım Şartlarını kabul ediyorum.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const Spacer(),
                  const Text(
                    'MVP Demo',
                    style: TextStyle(color: AppTheme.secondaryBlue),
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
