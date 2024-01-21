import 'package:flutter/material.dart';

class DinoAlert extends StatelessWidget {
  const DinoAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 200, top: 60),
          child: Image.asset(
            'assets/images/dragon.png',
            height: 230,
            width: 230,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200, bottom: 60),
          child: Image.asset(
            'assets/images/quicktip.png',
            height: 240,
            width: 240,
          ),
        )
      ],
    );
  }
}
