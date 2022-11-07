import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'common/di/injector.dart';
import 'common/navigator/navigation/navigation.dart';
import 'common/navigator/router/app_router.dart';
import 'common/navigator/router/router_module.dart';
import 'common/navigator/router/router_observer.dart';
import 'themes.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return
     MaterialApp(
        theme: light(context),
        darkTheme: dark(context),
        navigatorObservers: [sl.get<AppRouteObserver>()],
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
        navigatorKey: navigation.navigatorKey,
        initialRoute: AppRouter.loginPage,
        onGenerateRoute: (settings) =>
            generateRoute(routes: AppRouter(), settings: settings),
      );
  }

  Route<dynamic>? generateRoute({
    required RouterModule routes,
    required RouteSettings settings,
  }) {
    final routesMap = <String, MaterialPageRoute>{};
    routesMap.addAll(routes.getRoutes(settings));
    return routesMap[settings.name];
  }
}