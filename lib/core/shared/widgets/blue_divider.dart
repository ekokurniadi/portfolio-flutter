import 'package:flutter/material.dart';

class BlueDivider extends StatelessWidget {
  const BlueDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF3252df).withOpacity(0.2),
      ),
    );
  }
}
