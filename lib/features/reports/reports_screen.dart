import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  static const routeName = '/reports';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Raporlar')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Chip(label: Text('Günlük')),
                Chip(label: Text('Haftalık')),
                Chip(label: Text('Aylık')),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nisan 2024'),
                  SizedBox(height: 8),
                  Text('₺ 45.800', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                  SizedBox(height: 4),
                  Text('Toplam Kazanç'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('İstanbul Havalimanı → Fatih'),
              subtitle: const Text('24 Nisan, 14:15'),
              trailing: const Chip(label: Text('Ödendi')),
            ),
          ),
          const SizedBox(height: 24),
          PrimaryButton(label: 'PDF İNDİR', onPressed: () {}),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 2,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.work_outline), label: 'İşler'),
          NavigationDestination(icon: Icon(Icons.directions_car), label: 'Araçlar'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Raporlar'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Ayarlar'),
        ],
      ),
    );
  }
}
