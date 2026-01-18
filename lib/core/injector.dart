import 'package:get_it/get_it.dart';

class AppInjector {
  AppInjector._();

  static final AppInjector _instance = AppInjector._();

  factory AppInjector() {
    return _instance;
  }

  final GetIt injector = GetIt.instance;

  Future<void> initializeDependencies() async {
    // Services

    //DATA SOURCES

    //REPOSITORIES

    //Blocs

    return injector.allReady();
  }
}
