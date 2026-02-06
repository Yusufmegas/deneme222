import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import 'vehicle_add_screen.dart';
import 'vehicle_detail_screen.dart';

class VehiclesScreen extends StatelessWidget {
  const VehiclesScreen({super.key});

  static const routeName = '/vehicles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Araç Listesi')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          PrimaryButton(
            label: '+ Yeni Araç Ekle',
            onPressed: () {
              Navigator.pushNamed(context, VehicleAddScreen.routeName);
            },
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('34 ABC 333'),
              subtitle: const Text('Sprinter - Ahmet Demir'),
              trailing: const Chip(label: Text('2 iş')),
              onTap: () {
                Navigator.pushNamed(context, VehicleDetailScreen.routeName);
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('34 GTY 91'),
              subtitle: const Text('Volkswagen Transporter - Burak Kaya'),
              trailing: const Chip(label: Text('1 iş')),
              onTap: () {
                Navigator.pushNamed(context, VehicleDetailScreen.routeName);
              },
            ),
          ),
          const SizedBox(height: 24),
          PrimaryButton(label: 'Tüm Aktif işler için PDF İNDİR', onPressed: () {}),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
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
