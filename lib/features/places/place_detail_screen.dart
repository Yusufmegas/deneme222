import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key});

  static const routeName = '/place-detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Restoran Meridien')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Restoran Meridien', style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text('Beşiktaş Cad. No:22, Beşiktaş'),
                  Text('+90 212 333 44 98'),
                  Text('www.restoranmeridien.com'),
                  SizedBox(height: 8),
                  Chip(label: Text('%30 hakediş')),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButton(label: 'YOL TARİFİ', onPressed: () {}),
          const SizedBox(height: 16),
          const Text('Promosyon kodunuzu mu unuttunuz?'),
          const SizedBox(height: 6),
          const Text('Üyeliğiniz 20 gün sonra yenilenecek.', style: TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
