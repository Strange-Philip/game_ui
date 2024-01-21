import 'package:flutter/material.dart';

import 'grid_card.dart';

class GridForScreen extends StatelessWidget {
  const GridForScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        crossAxisSpacing: 16,
        mainAxisSpacing: 24,
        childAspectRatio: 1.15,
        children: const [
          GridCard(image: 'assets/images/image1.png'),
          GridCard(image: 'assets/images/image2.png'),
          GridCard(image: 'assets/images/image3.png'),
          GridCard(image: 'assets/images/image4.png'),
          GridCard(image: 'assets/images/image5.png'),
          GridCard(image: 'assets/images/image1.png'),
          GridCard(image: 'assets/images/image6.png'),
          GridCard(image: 'assets/images/image1.png'),
        ],
      ),
    );
  }
}
