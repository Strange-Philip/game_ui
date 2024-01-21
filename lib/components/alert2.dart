import 'package:flutter/material.dart';

class DinoAlert2 extends StatelessWidget {
  const DinoAlert2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 150,
      ),
      child: Image.asset(
        'assets/images/alert2.png',
        scale: 1.5,
      ),
    );
  }
}
