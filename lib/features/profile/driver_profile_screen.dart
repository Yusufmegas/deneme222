import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import '../driver/driver_home_screen.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({super.key});

  static const routeName = '/profile-driver';

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
            const TextField(decoration: InputDecoration(labelText: 'Araç Plakası')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Araç Türü')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Kapasite (örn 7 Yolcu)')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Hizmet Bölgeleri')),
            const SizedBox(height: 12),
            const TextField(decoration: InputDecoration(labelText: 'Minimum İş Fiyatı')),
            const SizedBox(height: 16),
            SwitchListTile(
              value: true,
              onChanged: (_) {},
              title: const Text('GPS ile Bildirim Al'),
            ),
            const Spacer(),
            PrimaryButton(
              label: 'DEVAM',
              onPressed: () {
                Navigator.pushNamed(context, DriverHomeScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
