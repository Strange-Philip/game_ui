import 'package:flutter/material.dart';
import 'package:game_ui/components/board_card.dart';
import 'package:game_ui/constants/app_colors.dart';
import 'package:game_ui/constants/app_text.dart';

class BoardList extends StatelessWidget {
  const BoardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 519,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF01A9F2), Color(0xFF005D9C)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: const [
          BoxShadow(
            color: AppColors.neonBlue,
            blurRadius: 0,
            offset: Offset(0, 2.5),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 487,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              color: const Color(0xff70D1FF),
              shadows: [
                BoxShadow(
                  color: Colors.grey.shade600.withOpacity(0.4),
                  blurRadius: 0,
                  offset: const Offset(0, -5),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45 - 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('#',
                          style: AppTypography().body.copyWith(
                                color: const Color(0xFF008CC9),
                              )),
                      Text(
                        'TAG',
                        style: AppTypography().body.copyWith(
                              color: const Color(0xFF008CC9),
                            ),
                      ),
                      Text(
                        'POINTS',
                        style: AppTypography().body.copyWith(
                              color: const Color(0xFF008CC9),
                            ),
                      ),
                    ],
                  ),
                ),
                const BoardCard(
                  rank: 1,
                  name: 'UXDERRICK',
                  points: 4030,
                  avatar: 'assets/images/panda.png',
                ),
                const BoardCard(
                  rank: 2,
                  name: 'dragon64',
                  points: 3900,
                  avatar: 'assets/images/human.png',
                ),
                const BoardCard(
                  rank: 3,
                  name: 'ghana_09',
                  points: 2233,
                  avatar: 'assets/images/bunny.png',
                ),
                const BoardCard(
                  rank: 4,
                  name: 'hey__ok',
                  points: 1239,
                  avatar: 'assets/images/astraunant.png',
                ),
                const BoardCard(
                  rank: 5,
                  name: 'you',
                  points: 335,
                  avatar: 'assets/images/mascot.png',
                  you: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
