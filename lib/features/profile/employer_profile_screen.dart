import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import '../employer/employer_home_screen.dart';

class EmployerProfileScreen extends StatelessWidget {
  const EmployerProfileScreen({super.key});

  static const routeName = '/profile-employer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        title: const Text('Profilinizi Tamamlayın'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(child: Text('1/6')),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Firma Adı')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Yetkili Kişi')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Fatura Bilgileri (Adres + Vergi No)')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Tercihli Araç Listesi')),
            const Spacer(),
            PrimaryButton(
              label: 'DEVAM ET',
              onPressed: () {
                Navigator.pushNamed(context, EmployerHomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
