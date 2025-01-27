import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LocatorService {
  static T getDependency<T extends Object>() =>
      Modular.get<T>();

  static bool dispose<T extends Object>() =>
      Modular.dispose<T>();

  static void addListener(VoidCallback listener) =>
      Modular.to.addListener(listener);

  static void removeListener(VoidCallback listener) =>
      Modular.to.removeListener(listener);

  static final String path = Modular.to.path;
}