import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:game_ui/constants/app_text.dart';

class BuyCoinsBar extends StatelessWidget {
  const BuyCoinsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 382,
          height: 65,
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: const Color(0xFF073F5D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 46,
                height: 46,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/user.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Stack(
            children: [
              Container(
                height: 50,
                width: 142,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF01A9F2), Color(0xFF005D9C)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFF0E602)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '309,993',
                      style: AppTypography().largerBody.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 26,
                      height: 26,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/coin.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 26),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/images/buy.svg',
                      width: 85,
                      height: 21,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 2),
                      child: Text('BUY COINS',
                          style: AppTypography().baseTextStyle.copyWith(
                                color: const Color(0xFFA15B09),
                                fontSize: 10.70,
                                fontWeight: FontWeight.w700,
                              )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
