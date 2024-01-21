import 'package:flutter/material.dart';
import 'package:game_ui/components/buy_coins_bar.dart';
import 'package:game_ui/components/gridview.dart';

import '../components/alert2.dart';
import '../constants/app_colors.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundBlue,
        elevation: 0,
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [BuyCoinsBar(), GridForScreen()],
              ),
            ),
          ),
          const Align(alignment: Alignment.bottomRight, child: DinoAlert2()),
        ],
      ),
    );
  }
}
