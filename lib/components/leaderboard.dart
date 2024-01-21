import 'package:flutter/material.dart';
import 'package:game_ui/constants/app_colors.dart';
import 'package:game_ui/constants/app_text.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: 382,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF01A9F2), Color(0xFF005D9C)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          shadows: const [
            BoxShadow(
              color: AppColors.neonBlue,
              blurRadius: 0,
              offset: Offset(0, -1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            'SEE GLOBAL LEADERBOARD',
            style: AppTypography().largeBody.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
      ),
    );
  }
}
