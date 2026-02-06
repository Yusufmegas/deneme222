import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import 'role_select_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  static const routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kod Doğrulama',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text('Gönderilen SMS kodunu girin.'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: 64,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(counterText: ''),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              label: 'DOĞRULA',
              onPressed: () {
                Navigator.pushNamed(context, RoleSelectScreen.routeName);
              },
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {},
              child: const Text('Tekrar Kod Gönder (40sn)'),
            ),
          ],
        ),
      ),
    );
  }
}
