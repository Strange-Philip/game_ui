import 'package:flutter/material.dart';
import 'package:game_ui/components/dino_alert.dart';
import 'package:game_ui/components/leaderboard.dart';
import 'package:game_ui/constants/app_colors.dart';
import 'package:game_ui/components/close_button.dart';

import '../components/board.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlue,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundBlue,
        elevation: 0,
        toolbarHeight: 20,
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
                children: [
                  Align(alignment: Alignment.centerRight, child: GameCloseButton()),
                  LeaderBoard(),
                  BoardList(),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: DinoAlert()),
        ],
      ),
    );
  }
}
