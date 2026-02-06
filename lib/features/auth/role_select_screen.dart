import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';
import '../driver/driver_home_screen.dart';
import '../employer/employer_home_screen.dart';
import '../profile/driver_profile_screen.dart';
import '../profile/employer_profile_screen.dart';

class RoleSelectScreen extends StatefulWidget {
  const RoleSelectScreen({super.key});

  static const routeName = '/role-select';

  @override
  State<RoleSelectScreen> createState() => _RoleSelectScreenState();
}

class _RoleSelectScreenState extends State<RoleSelectScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        title: const Text('Hesabınızı Seçin'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            RoleCard(
              title: 'Araç / Şoför',
              subtitle: 'Şoför ve araç sahipleri için.',
              icon: Icons.directions_car,
              isSelected: selectedIndex == 0,
              onTap: () => setState(() => selectedIndex = 0),
            ),
            RoleCard(
              title: 'İşveren / Acenta',
              subtitle: 'Firma ve acenteler için.',
              icon: Icons.business_center,
              isSelected: selectedIndex == 1,
              onTap: () => setState(() => selectedIndex = 1),
            ),
            RoleCard(
              title: 'Yönetici (Panel)',
              subtitle: 'Sistem yöneticileri için.',
              icon: Icons.admin_panel_settings,
              isSelected: selectedIndex == 2,
              onTap: () => setState(() => selectedIndex = 2),
            ),
            const Spacer(),
            PrimaryButton(
              label: 'DEVAM ET',
              onPressed: () {
                if (selectedIndex == 0) {
                  Navigator.pushNamed(context, DriverProfileScreen.routeName);
                } else if (selectedIndex == 1) {
                  Navigator.pushNamed(context, EmployerProfileScreen.routeName);
                } else {
                  Navigator.pushNamed(context, EmployerHomeScreen.routeName);
                }
              },
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, DriverHomeScreen.routeName);
              },
              child: const Text('Demo hızlı geçiş (şoför)'),
            ),
          ],
        ),
      ),
    );
  }
}

class RoleCard extends StatelessWidget {
  const RoleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final borderColor = isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor, width: 1.2),
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(icon, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: Colors.black54)),
                ],
              ),
            ),
            if (isSelected)
              Icon(Icons.check_circle, color: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }
}
