import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class VehicleAddScreen extends StatelessWidget {
  const VehicleAddScreen({super.key});

  static const routeName = '/vehicle-add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yeni Araç Ekle')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(decoration: InputDecoration(labelText: 'Plaka (34 ABC 123)')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Araç Türü')),
          const SizedBox(height: 12),
          const Text('Araç Özellikleri', style: TextStyle(fontWeight: FontWeight.w600)),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: const Text('Rehber Mikrofon'),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (_) {},
            title: const Text('Bebek Koltuğu'),
          ),
          CheckboxListTile(
            value: true,
            onChanged: (_) {},
            title: const Text('Deri Koltuklar'),
          ),
          const SizedBox(height: 12),
          PrimaryButton(label: 'EKLE', onPressed: () {}),
        ],
      ),
    );
  }
}
