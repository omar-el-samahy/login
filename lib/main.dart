import 'package:flutter/material.dart';
import 'core/constants/supabase_cofig.dart';
import 'core/theme/app_theme.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'features/auth/presentation/screens/landing_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: SupabaseConfig.supabaseUrl,
    anonKey: SupabaseConfig.supabaseAnonKey,
  );

  runApp(const LoginUI());
}

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth UI',
      theme: AppTheme.darkTheme,
      home: const LandingScreen(),
    );
  }
}
