import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'reactive_controller_state.dart';

abstract class IReactiveService<State extends ReactiveControllerState> extends ValueListenable<State> implements Disposable{
  bool get hasListeners;

  void emit(State state) => throw UnimplementedError();
}