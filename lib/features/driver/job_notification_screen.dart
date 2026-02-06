import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../widgets/primary_button.dart';

class JobNotificationScreen extends StatelessWidget {
  const JobNotificationScreen({super.key});

  static const routeName = '/job-notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yeni İş Bildirimi')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('İstanbul Havalimanı → Fatih',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    const Text('Bugün, 19:00'),
                    const SizedBox(height: 12),
                    const Text('₺ 1.200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppTheme.warning.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Yanıt süreniz:'),
                          Text('01:28', style: TextStyle(fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            PrimaryButton(
              label: 'İŞİ AL',
              onPressed: () {},
              color: AppTheme.success,
            ),
            const SizedBox(height: 12),
            PrimaryButton(
              label: 'Reddet',
              onPressed: () {},
              isOutlined: true,
              color: AppTheme.danger,
            ),
          ],
        ),
      ),
    );
  }
}
