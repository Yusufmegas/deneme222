import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class JobFormScreen extends StatelessWidget {
  const JobFormScreen({super.key});

  static const routeName = '/job-form';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yeni İş Gir')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(decoration: InputDecoration(labelText: 'Çıkış Lokasyonu')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Varış Lokasyonu')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Tarih / Saat')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Fiyat')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Araç Türü')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Yolcu / Valiz Sayısı')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'VIP Özellikler')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Not')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Sadece şu plakalar görsün')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'Şu plakalar görmesin')),
          const SizedBox(height: 12),
          const TextField(decoration: InputDecoration(labelText: 'X puan üstü görsün')),
          const SizedBox(height: 16),
          PrimaryButton(label: 'İŞİ YAYINLA', onPressed: () {}),
        ],
      ),
    );
  }
}
