import 'dart:async';

// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './common/di/injector.dart' as di;
import 'dart:developer' as developer;

import 'application.dart';

Future<void> main() async {
  ///[cache some errors]
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (!kReleaseMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    }
  };

  ///[run app]
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    await Future.delayed(
      const Duration(seconds: 1),
    );
    disableErrorWidget();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp],)
        .then((_) {
      runApp(const Application());
    });

    ///[console] flavor running hidden when release mode
    if (!kReleaseMode) {}
  }, (error, stackTrace) {
    if(kDebugMode){
      developer.log('$error', name: '❎ ERROR OTHER   :');
      developer.log('$stackTrace', name: '❎ STACKTRACE    :');
    }
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

/// [disable error] widget when [release mode]
void disableErrorWidget() {
  if (kReleaseMode) {
    ErrorWidget.builder = (details) {
      return const Center(
        child: Text('Something wrong, Please chek your debug console'),
      );
    };
  }
}
