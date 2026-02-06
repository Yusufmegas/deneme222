import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/auth/login_screen.dart';
import 'features/auth/otp_screen.dart';
import 'features/auth/role_select_screen.dart';
import 'features/driver/driver_home_screen.dart';
import 'features/driver/job_complete_screen.dart';
import 'features/driver/job_detail_screen.dart';
import 'features/driver/job_notification_screen.dart';
import 'features/employer/employer_home_screen.dart';
import 'features/employer/vehicle_add_screen.dart';
import 'features/employer/vehicle_detail_screen.dart';
import 'features/employer/vehicles_screen.dart';
import 'features/job/job_form_screen.dart';
import 'features/places/place_detail_screen.dart';
import 'features/places/places_screen.dart';
import 'features/premium/premium_screen.dart';
import 'features/profile/driver_profile_screen.dart';
import 'features/profile/employer_profile_screen.dart';
import 'features/reports/reports_screen.dart';
import 'features/settings/settings_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: VipTransferApp()));
}

class VipTransferApp extends StatelessWidget {
  const VipTransferApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Araç Yönetim Platformu',
      theme: AppTheme.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => const LoginScreen(),
        OtpScreen.routeName: (_) => const OtpScreen(),
        RoleSelectScreen.routeName: (_) => const RoleSelectScreen(),
        DriverProfileScreen.routeName: (_) => const DriverProfileScreen(),
        EmployerProfileScreen.routeName: (_) => const EmployerProfileScreen(),
        DriverHomeScreen.routeName: (_) => const DriverHomeScreen(),
        JobNotificationScreen.routeName: (_) => const JobNotificationScreen(),
        JobDetailScreen.routeName: (_) => const JobDetailScreen(),
        JobCompleteScreen.routeName: (_) => const JobCompleteScreen(),
        EmployerHomeScreen.routeName: (_) => const EmployerHomeScreen(),
        VehiclesScreen.routeName: (_) => const VehiclesScreen(),
        VehicleDetailScreen.routeName: (_) => const VehicleDetailScreen(),
        VehicleAddScreen.routeName: (_) => const VehicleAddScreen(),
        ReportsScreen.routeName: (_) => const ReportsScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
        PremiumScreen.routeName: (_) => const PremiumScreen(),
        PlacesScreen.routeName: (_) => const PlacesScreen(),
        PlaceDetailScreen.routeName: (_) => const PlaceDetailScreen(),
        JobFormScreen.routeName: (_) => const JobFormScreen(),
      },
    );
  }
}
