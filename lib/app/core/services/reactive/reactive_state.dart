import 'package:flutter/widgets.dart';

import '../locator/locator_service.dart';
import 'reactive_service.dart';

abstract class ReactiveState<S extends StatefulWidget, M extends IReactiveService> extends State<S> {
  late final M controller;

  @override
  @mustCallSuper
  void initState() {
    super.initState();
    controller = LocatorService.getDependency<M>();
  }

  @override
  void dispose() {
    super.dispose();
    final isDisposed = LocatorService.dispose<M>();
    if (isDisposed) {
      return;
    }
    controller.dispose();
  }
}