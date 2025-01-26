import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  final Color white;
  final Color black;
  final Color vividSkyBlue;
  final Color slateGray;
  final Color cultured;
  final Color lightSilver;
  final Color lightSteelBlue;
  final Color pastelBlue;
  final Color lightIceBlue;
  final Color redSalsa;

  const AppColors({
    required this.white,
    required this.black,
    required this.vividSkyBlue,
    required this.slateGray,
    required this.cultured,
    required this.lightSilver,
    required this.lightSteelBlue,
    required this.pastelBlue,
    required this.lightIceBlue,
    required this.redSalsa,
  });

  @override
  AppColors copyWith({
    Color? white,
    Color? black,
    Color? vividSkyBlue,
    Color? slateGray,
    Color? cultured,
    Color? lightSilver,
    Color? lightSteelBlue,
    Color? pastelBlue,
    Color? lightIceBlue,
    Color? redSalsa,
  }) {
    return AppColors(
      white: white ?? this.white,
      black: black ?? this.black,
      vividSkyBlue: vividSkyBlue ?? this.vividSkyBlue,
      slateGray: slateGray ?? this.slateGray,
      cultured: cultured ?? this.cultured,
      lightSilver: lightSilver ?? this.lightSilver,
      lightSteelBlue: lightSteelBlue ?? this.lightSteelBlue,
      pastelBlue: pastelBlue ?? this.pastelBlue,
      lightIceBlue: lightIceBlue ?? this.lightIceBlue,
      redSalsa: redSalsa ?? this.redSalsa,
    );
  }

  @override
  AppColors lerp(covariant AppColors? other, double t) {
    return AppColors(
      white: Color.lerp(white, other?.white, t)!,
      black: Color.lerp(black, other?.black, t)!,
      vividSkyBlue: Color.lerp(vividSkyBlue, other?.vividSkyBlue, t)!,
      slateGray: Color.lerp(slateGray, other?.slateGray, t)!,
      cultured: Color.lerp(cultured, other?.cultured, t)!,
      lightSilver: Color.lerp(lightSilver, other?.lightSilver, t)!,
      lightSteelBlue: Color.lerp(lightSteelBlue, other?.lightSteelBlue, t)!,
      pastelBlue: Color.lerp(pastelBlue, other?.pastelBlue, t)!,
      lightIceBlue: Color.lerp(lightIceBlue, other?.lightIceBlue, t)!,
      redSalsa: Color.lerp(redSalsa, other?.redSalsa, t)!,
    );
  }
}