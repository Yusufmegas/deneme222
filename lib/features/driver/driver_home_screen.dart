import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/primary_button.dart';
import '../driver/job_detail_screen.dart';

class DriverHomeScreen extends StatelessWidget {
  const DriverHomeScreen({super.key});

  static const routeName = '/driver-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoş geldin, Ahmet!'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: [
                const Text('Müsait', style: TextStyle(color: Colors.white)),
                const SizedBox(width: 8),
                Switch(
                  value: true,
                  onChanged: (_) {},
                  activeColor: Colors.white,
                  activeTrackColor: Colors.white54,
                  inactiveThumbColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Aktif İşlerin', style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 12),
                  const Text('İstanbul Havalimanı → Fatih'),
                  const SizedBox(height: 4),
                  const Text('Bugün, 14:30'),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('₺ 1.200', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                      SizedBox(
                        width: 140,
                        child: PrimaryButton(
                          label: 'İŞİ GÖRÜNTÜLE',
                          onPressed: () {
                            Navigator.pushNamed(context, JobDetailScreen.routeName);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Kazançların', style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 12),
                  const Text('Bugün ₺ 1.200'),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: 0.4,
                      minHeight: 10,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: const AlwaysStoppedAnimation(AppTheme.primaryBlue),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text('Target ₺ 3.000', style: TextStyle(color: Colors.black54)),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.work_outline), label: 'İşler'),
          NavigationDestination(icon: Icon(Icons.notifications_none), label: 'Bildirimler'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Raporlar'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Ayarlar'),
        ],
      ),
    );
  }
}
