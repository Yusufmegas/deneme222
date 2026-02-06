import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import 'place_detail_screen.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  static const routeName = '/places';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hakediş Veren Mekanlar')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Bölge seç...')),
          const SizedBox(height: 16),
          Row(
            children: const [
              Chip(label: Text('Beğiler')),
              SizedBox(width: 8),
              Chip(label: Text('Suç Mekanlar')),
            ],
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('Taksim Restaurant'),
              subtitle: const Text('%10 hakediş oranı · Taksim Meydanı'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, PlaceDetailScreen.routeName);
              },
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              title: const Text('Galata Cafe'),
              subtitle: const Text('%8 hakediş oranı · Galata Kulesi'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, PlaceDetailScreen.routeName);
              },
            ),
          ),
          const SizedBox(height: 24),
          PrimaryButton(label: 'PDF İNDİR', onPressed: () {}),
        ],
      ),
    );
  }
}
