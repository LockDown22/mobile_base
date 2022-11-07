
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_base/common/navigator/router/router_module.dart';

import '../../../presentation/login/login_page.dart';


class AppRouter extends RouterModule {
  AppRouter();
  static const String loginPage = '/login';


  @override
  Map<String, MaterialPageRoute> getRoutes(RouteSettings settings) {
    return {

      AppRouter.loginPage: MaterialPageRoute(builder: (context) => const LoginPage(), settings: settings),


    };
  }
}
