import 'package:clean_ui_code_implementation/src/utils/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static TextStyle headline1 = PretendardTextStyle.bold(
    size: 32,
    height: 37,
  );

  static TextStyle headline2 = PretendardTextStyle.semiBold(
    size: 28,
    height: 31,
  );

  static TextStyle headline3 = PretendardTextStyle.semiBold(
    size: 22,
    height: 24,
  );

  static TextStyle paragraph1 = PretendardTextStyle.bold(
    size: 34,
    height: 48,
  );

  static TextStyle paragraph2 = PretendardTextStyle.semiBold(
    size: 28,
    height: 39,
  );

  static TextStyle paragraph3 = PretendardTextStyle.medium(
    size: 22,
    height: 31,
  );

  static TextStyle body1 = PretendardTextStyle.semiBold(
    size: 17,
    height: 19,
  );

  static TextStyle body2 = PretendardTextStyle.medium(
    size: 15,
    height: 17,
  );

  static TextStyle body3 = PretendardTextStyle.regular(
    size: 13,
    height: 14,
  );

  static TextStyle body4 = PretendardTextStyle.regular(
    size: 11,
    height: 12,
  );
}

class PretendardTextStyle extends TextStyle {
  static const interBold = 'inter_bold';
  static const interSemiBold = 'inter_semiBold';
  static const interMedium = 'inter_medium';
  static const interRegular = 'inter_regular';

  const PretendardTextStyle(
    String fontFamily,
    Color color,
    double size,
    FontWeight fontWeight,
    double height,
    double? letterSpacing,
  ) : super(
            fontFamily: fontFamily,
            color: color,
            fontSize: size,
            fontWeight: fontWeight,
            height: height / size,
            letterSpacing: letterSpacing,
            leadingDistribution: TextLeadingDistribution.even);

  factory PretendardTextStyle.bold({
    required double size,
    Color color = AppColor.black,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.0,
    double? letterSpacing,
  }) =>
      PretendardTextStyle(
          interBold, color, size, fontWeight, height, letterSpacing);

  factory PretendardTextStyle.semiBold({
    required double size,
    Color color = AppColor.black,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.0,
    double? letterSpacing,
  }) =>
      PretendardTextStyle(
          interSemiBold, color, size, fontWeight, height, letterSpacing);

  factory PretendardTextStyle.medium({
    required double size,
    Color color = AppColor.black,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.0,
    double? letterSpacing,
  }) =>
      PretendardTextStyle(
          interMedium, color, size, fontWeight, height, letterSpacing);

  factory PretendardTextStyle.regular({
    required double size,
    Color color = AppColor.black,
    FontWeight fontWeight = FontWeight.normal,
    double height = 1.0,
    double? letterSpacing,
  }) =>
      PretendardTextStyle(
          interRegular, color, size, fontWeight, height, letterSpacing);
}
