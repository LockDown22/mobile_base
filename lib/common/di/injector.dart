

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_base/common/di/repository_injector.dart';

import '../configs/build_config.dart';
import 'bloc_injector.dart';
import 'initialize_dependencies.dart';

final sl = GetIt.instance;

Future init() async{
  // await initEnv();
  await initializeDependencies();
  injectorRepository();
  injectorBloc();

}

// Future initEnv() async {
//   /// [Flavor]
//   final flavor = await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
//   if (flavor == 'production') {
//     sl.registerLazySingleton<BuildConfigs>(
//             () => BuildConfigs(Environment.prod));
//   }
// }