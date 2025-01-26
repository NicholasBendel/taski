import 'package:modular_core/modular_core.dart';
import 'package:taski/app/modules/home/home_bindings.dart';
import 'package:taski/app/modules/home/home_routing.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) => HomeBindings.binds(i);

  @override
  void routes(RouteManager r) => HomeRouting.routes(r);
}