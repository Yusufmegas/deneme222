import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  static const routeName = '/premium';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Premium Üyelik')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Faydalar', style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('• Öncelikli İş Bildirimleri'),
                  Text('• Otomatik İş Önerileri'),
                  Text('• Rapor İndirme'),
                  Text('• İş Bazlı Prim Hakedişi'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Aylık Üyelik ₺349/ay', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          PrimaryButton(label: 'ŞİMDİ YÜKSELT', onPressed: () {}),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: 'Promo kod alanı')),
          const SizedBox(height: 12),
          PrimaryButton(label: 'KODU UYGULA', onPressed: () {}, isOutlined: true),
        ],
      ),
    );
  }
}
