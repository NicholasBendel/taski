import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color white;
  final Color slatePurple;
  final Color blue;
  final Color paleWhite;
  final Color slateBlue;
  final Color mutedAzure;
  final Color fireRed;

  const AppColors({
    required this.white,
    required this.slatePurple,
    required this.blue,
    required this.paleWhite,
    required this.slateBlue,
    required this.mutedAzure,
    required this.fireRed,
  });

  @override
  AppColors copyWith({
    Color? white,
    Color? slatePurple,
    Color? blue,
    Color? paleWhite,
    Color? slateBlue,
    Color? mutedAzure,
    Color? fireRed,
  }) {
    return AppColors(
      white: white ?? this.white,
      slatePurple: slatePurple ?? this.slatePurple,
      blue: blue ?? this.blue,
      paleWhite: paleWhite ?? this.paleWhite,
      slateBlue: slateBlue ?? this.slateBlue,
      mutedAzure: mutedAzure ?? this.mutedAzure,
      fireRed: fireRed ?? this.fireRed,
    );
  }

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    return AppColors(
      white: Color.lerp(white, other?.white, t)!,
      slatePurple: Color.lerp(slatePurple, other?.slatePurple, t)!,
      blue: Color.lerp(blue, other?.blue, t)!,
      paleWhite: Color.lerp(paleWhite, other?.paleWhite, t)!,
      slateBlue: Color.lerp(slateBlue, other?.slateBlue, t)!,
      mutedAzure: Color.lerp(mutedAzure, other?.mutedAzure, t)!,
      fireRed: Color.lerp(fireRed, other?.fireRed, t)!,
    );
  }
}