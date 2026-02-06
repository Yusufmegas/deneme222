import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import '../job/job_form_screen.dart';

class EmployerHomeScreen extends StatelessWidget {
  const EmployerHomeScreen({super.key});

  static const routeName = '/employer-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoş geldiniz, Örnek Turizm A.Ş.'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: PrimaryButton(
              label: 'Yeni İş Gir',
              onPressed: () {
                Navigator.pushNamed(context, JobFormScreen.routeName);
              },
            ),
          ),
        ],
      ),
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
              children: const [
                Chip(label: Text('1 Aktif')),
                SizedBox(width: 8),
                Chip(label: Text('1 Tamamlanan')),
                SizedBox(width: 8),
                Chip(label: Text('1 İptal')),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('İstanbul Havalimanı → Fatih'),
              subtitle: const Text('Bugün, 19:00'),
              trailing: const Text('₺ 1.200'),
              onTap: () {},
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('Tamamlanan'),
              subtitle: const Text('34 ABC 456 - Ahmet Demir'),
              trailing: const Text('₺ 900'),
              onTap: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
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
