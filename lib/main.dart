import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/presentation/screens/landing_screen.dart';

void main() {
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
