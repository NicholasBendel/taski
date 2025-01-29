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
    slatePurple: Color(0xFF3F3D56),
    blue: Color(0xFF007FFF),
    paleWhite: Color(0xFFF5F7F9),
    slateBlue: Color(0xFF8D9CB8),
    mutedAzure: Color(0xFFC6CFDC),
    fireRed: Color(0xFFFF5E5E),
  );

  //Caso queira um app com darkMode é só modificar s cores abaixo pré configuradas
  static const AppColors _themeDark = AppColors(
    white: Color(0xFFFFFFFF),
    slatePurple: Color(0xFF3F3D56),
    blue: Color(0xFF007FFF),
    paleWhite: Color(0xFFF5F7F9),
    slateBlue: Color(0xFF8D9CB8),
    mutedAzure: Color(0xFFC6CFDC),
    fireRed: Color(0xFFFF5E5E),
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