import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../core/logging/app_logger.dart';
import '../../core/logging/talker_logger.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {

  getIt.registerSingleton<Talker>(
    TalkerFlutter.init(),
  );

  getIt.registerLazySingleton<AppLogger>(
        () => AppTalkerLogger(getIt<Talker>()),
  );
}