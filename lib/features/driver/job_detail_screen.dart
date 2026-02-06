import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});

  static const routeName = '/job-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aktif İş Detayı')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('İstanbul Havalimanı → Fatih',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  const Text('Bugün, 19:00'),
                  const SizedBox(height: 8),
                  const Text('VIP Minibüs / 7 Yolcu'),
                  const SizedBox(height: 12),
                  const Text('₺ 1.200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 16),
                  const Text('Yolcu Bilgileri', style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  const Text('Mehmet Kara'),
                  const Text('+90 532 987 65 43'),
                  const Text('Valiz: 1'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButton(label: 'Yolcu Alındı', onPressed: () {}),
          const SizedBox(height: 12),
          PrimaryButton(label: 'Yolda', onPressed: () {}, isOutlined: true),
        ],
      ),
    );
  }
}
