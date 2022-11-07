

import 'package:shared_preferences/shared_preferences.dart';

import '../../data/datasource/local/local_service.dart';
import '../configs/build_config.dart';
import '../navigator/navigation/navigation.dart';
import '../navigator/navigation/navigation_impl.dart';
import '../navigator/router/router_observer.dart';
import '../networking/interceptor/logger_interceptor.dart';
import '../networking/rest_client.dart';
import 'injector.dart';

Future initializeDependencies() async{
  /// [Shared]
  sl.registerSingleton(await SharedPreferences.getInstance());

  /// [LocalService]
  sl.registerSingleton(LocalService());

  // [Firebase firestore]
  // sl.registerLazySingleton(() => CloudFirestore());

  /// [RestClient]
  sl.registerLazySingleton(
          () => RestClient(sl<BuildConfigs>().url(), interceptors: [
        LoggerInterceptor(),
        // AuthInterceptor(),
      ]));

  /// [Navigation]
  sl.registerLazySingleton<Navigation>(() => NavigationImpl());

  /// [Navigator util]
  sl.registerSingleton(AppRouteObserver());



}