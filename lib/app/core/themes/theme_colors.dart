import 'package:flutter/material.dart';

import 'app_colors.dart';

class ThemeColors {
  static final ThemeData _theme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    applyElevationOverlayColor: true,
  );

  static const AppColors _themeLight = AppColors(
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    vividSkyBlue: Color(0xFF007FFF),
    slateGray: Color(0xFF616075),
    cultured: Color(0xFFF5F7F9),
    lightSilver: Color(0xFFD2D9E3),
    lightSteelBlue: Color(0xFFC6CFDC),
    pastelBlue: Color(0xFFA9B5CA),
    lightIceBlue: Color(0xFFE5F2FF),
    redSalsa: Color(0xFFFF5E5E),
  );

  //Caso queira um app com darkMode é só modificar s cores abaixo pré configuradas
  static const AppColors _themeDark = AppColors(
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    vividSkyBlue: Color(0xFF007FFF),
    slateGray: Color(0xFF616075),
    cultured: Color(0xFFF5F7F9),
    lightSilver: Color(0xFFD2D9E3),
    lightSteelBlue: Color(0xFFC6CFDC),
    pastelBlue: Color(0xFFA9B5CA),
    lightIceBlue: Color(0xFFE5F2FF),
    redSalsa: Color(0xFFFF5E5E),
  );

  static ThemeData themeLight = _theme.copyWith(
    scaffoldBackgroundColor: _themeLight.white,
    extensions: [_themeLight],
  );

  static ThemeData themeDark = _theme.copyWith(
    scaffoldBackgroundColor: _themeDark.white,
    extensions: [_themeDark],
  );
}