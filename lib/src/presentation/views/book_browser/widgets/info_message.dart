import 'package:flutter/material.dart';

class InfoMessage extends StatelessWidget {
  const InfoMessage({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(
          icon,
          size: 100,
          color: Colors.grey,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
