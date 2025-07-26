import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import 'confirm_dialogue.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _showConfirmation() {
    showDialog(context: context, builder: (context) => const ConfirmDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00122E), Color(0xFF00193D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              "SIGN UP",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "CREATE AN ACCOUNT TO MAKE SDFDSF",
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            const SizedBox(height: 40),

            CustomTextField(label: "Full Name", controller: _nameController),
            const SizedBox(height: 20),
            CustomTextField(label: "Email", controller: _emailController),
            const SizedBox(height: 20),
            CustomTextField(
              label: "Password",
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 30),

            // Indicator Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(true), _buildDot(false), _buildDot(false)],
            ),
            const SizedBox(height: 30),

            // NEXT Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A63F0),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: _showConfirmation,
                child: const Text(
                  "NEXT",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Text(
                  "HAVE AN ACCOUNT?",
                  style: TextStyle(
                    color: Colors.white70,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 10 : 8,
      height: active ? 10 : 8,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.white30,
        shape: BoxShape.circle,
      ),
    );
  }
}
