import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class JobCompleteScreen extends StatelessWidget {
  const JobCompleteScreen({super.key});

  static const routeName = '/job-complete';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('İşi Tamamla & Puanla')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Başakşehir → Kadıköy',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  const Text('Bugün, 17:45'),
                  const SizedBox(height: 8),
                  const Text('₺ 1.100', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 16),
                  Row(
                    children: List.generate(
                      5,
                      (index) => const Icon(Icons.star, color: Colors.amber),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const TextField(
                    maxLines: 3,
                    decoration: InputDecoration(hintText: 'Yorum bırakmak ister misiniz?'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButton(label: 'İŞİ TAMAMLA', onPressed: () {}),
        ],
      ),
    );
  }
}
