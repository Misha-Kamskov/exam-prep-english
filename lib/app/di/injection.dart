import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../core/logging/app_logger.dart';
import '../../core/logging/talker_logger.dart';
import '../router/app_router.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton<AppRouter>(AppRouter.new);
}
