import 'package:flutter/material.dart';

class StatRing extends StatelessWidget {
  final String label;
  final String value;

  const StatRing({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                value: 0.75,
                strokeWidth: 6,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF0A63F0)),
                backgroundColor: Colors.white24,
              ),
            ),
            Text(
              value,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white70),
        )
      ],
    );
  }
}
