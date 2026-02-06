import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class VehicleDetailScreen extends StatelessWidget {
  const VehicleDetailScreen({super.key});

  static const routeName = '/vehicle-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('34 ABC 333')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Sprinter', style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('Şoför: Ahmet Demir'),
                  Text('İletişim: +90 212 333 55 55'),
                  Text('Sigorta Başlangıç: 15 Nisan 2024'),
                  Text('Sigorta Bitiş: 15 Nisan 2025'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButton(label: 'ARACI DÜZENLE', onPressed: () {}),
        ],
      ),
    );
  }
}
