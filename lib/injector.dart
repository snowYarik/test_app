import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_app/injector.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() {
  $initGetIt(getIt);
}
