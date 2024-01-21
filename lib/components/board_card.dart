import 'package:flutter/material.dart';
import 'package:game_ui/constants/app_text.dart';

class BoardCard extends StatelessWidget {
  final String name;
  final String avatar;
  final int points;
  final int rank;
  final bool you;
  const BoardCard(
      {super.key,
      required this.name,
      required this.avatar,
      required this.points,
      required this.rank,
      this.you = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: 316,
        height: 74,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: you ? const Color(0xffF0E602) : const Color(0xFF02A8F0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.2),
              blurRadius: 0,
              offset: const Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(bottom: 5),
              decoration: ShapeDecoration(
                color: you ? const Color(0xffFFF85F) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: [
                  BoxShadow(
                    color: Colors.grey.shade300.withOpacity(0.4),
                    blurRadius: 0,
                    offset: const Offset(0, -4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Image(
                image: AssetImage(
                  rank == 1
                      ? 'assets/images/firstplace.png'
                      : rank == 2
                          ? 'assets/images/second.png'
                          : rank == 3
                              ? 'assets/images/thirdplace.png'
                              : 'assets/images/silver.png',
                ),
                fit: BoxFit.contain,
                height: 40,
                width: 40,
                color: rank == 1 || you ? null : Colors.grey.shade600.withOpacity(0.8),
                colorBlendMode: BlendMode.srcATop,
              ),
            ),
            const SizedBox(width: 18),
            Container(
              width: 24,
              height: 24,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(avatar),
                  fit: BoxFit.fill,
                ),
                shape: const OvalBorder(
                  side: BorderSide(
                    width: 4,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0x331B6C98),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              name.toUpperCase(),
              style: AppTypography().body.copyWith(
                    color: Colors.white,
                  ),
            ),
            const Spacer(),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Container(
                    height: 20,
                    width: 76,
                    decoration: ShapeDecoration(
                      color: you ? const Color(0xffBCB403) : const Color(0xFF0098DA),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        points.toString(),
                        style: AppTypography().body.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/coin.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
