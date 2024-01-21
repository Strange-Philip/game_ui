import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_colors.dart';

class GameCloseButton extends StatelessWidget {
  const GameCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: AppColors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        shadows: [
          BoxShadow(
            color: const Color(0xff000040).withOpacity(0.25),
            blurRadius: 0,
            offset: const Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: SvgPicture.asset(
        'assets/icons/x.svg',
        colorFilter: const ColorFilter.mode(
          AppColors.backgroundBlue,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
