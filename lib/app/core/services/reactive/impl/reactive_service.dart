import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../reactive_controller_state.dart';
import '../reactive_service.dart';

class ReactiveService<State extends ReactiveControllerState> extends IReactiveService<State> implements Disposable{
  final State initialState;
  late final ValueNotifier<State> _notifier;

  ReactiveService(this.initialState){
    _notifier = ValueNotifier<State>(initialState);
  }

  @override
  void addListener(VoidCallback listener) {
    _notifier.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _notifier.removeListener(listener);
  }

  @override
  get value => _notifier.value;

  State get state => value;

  @override
  bool get hasListeners => this.hasListeners;

  @override
  void emit(State state){
    try {
      _notifier.value = state;
    }catch(e){
      log(e.toString());
    }
  }

  @override
  void dispose() {
    _notifier.dispose();
  }
}