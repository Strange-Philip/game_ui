import 'package:flutter/material.dart';
import 'package:game_ui/constants/app_text.dart';

class GridCard extends StatelessWidget {
  final String image;
  const GridCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 160,
      decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFF2E801), Color(0xFFB3B600)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0xFFEBCB20),
              offset: Offset(0, 3),
              blurRadius: 0,
            )
          ]),
      padding: const EdgeInsets.all(11),
      child: Container(
        width: 151,
        height: 128,
        decoration: ShapeDecoration(
          color: const Color(0xFFF4FF70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        padding: const EdgeInsets.only(bottom: 18),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  width: 110,
                  height: 110,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                      width: 110,
                      height: 29,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFFFCFF6E), Color(0xFFC4A73F)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFEEE963)),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Center(
                        child: Text('300 COINS',
                            style: AppTypography().baseTextStyle.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFA15B09),
                                  fontSize: 14,
                                )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/coin.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
