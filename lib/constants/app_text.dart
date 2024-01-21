import 'package:flutter/material.dart';

// https://stackoverflow.com/a/63068152/644571
double _heightCalc(int pxHeight, int fontSize) => pxHeight / fontSize;

class AppTypography {
  TextStyle get baseTextStyle => const TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: 'Grandstander',
      );

  /// bold  TextStyle styles
  TextStyle get largeBody => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 18,
      );
  TextStyle get largerBody => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 20,
      );
  TextStyle get body => baseTextStyle.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  TextStyle get largeTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 27,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(36, 27),
      );
  TextStyle get appbarTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        overflow: TextOverflow.ellipsis,
      );

  TextStyle get sectionTitle => baseTextStyle.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(23, 16),
      );

  TextStyle get header => baseTextStyle.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        overflow: TextOverflow.ellipsis,
        height: _heightCalc(20, 15),
      );
}
