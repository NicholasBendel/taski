import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationService {
  static void pop<T>(BuildContext context, {T? result}){
    Modular.to.pop(result);
  }

  static Future<T?> pushNamed<T extends Object?>(
      BuildContext context,
      String routeName, {
        Object? arguments,
      }
      ) {
    return Modular.to.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
      String routeName, {
        TO? result,
        Object? arguments,
      }
      ) {
    return Modular.to.pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  static Future<T?> pushNamedAndRemoveUntil<T extends Object?, TO extends Object?>(
      String routeName, {
        Object? arguments,
      }
      ) {
    return Modular.to.pushNamedAndRemoveUntil(
      routeName,
          (p0) => true,
      arguments: arguments,
    );
  }

  static void navigate<T extends Object?, TO extends Object?>(
      String routeName, {
        Object? arguments,
      }
      ) {
    return Modular.to.navigate(
      routeName,
      arguments: arguments,
    );
  }
}