import 'package:flutter/material.dart';

import 'di/injection.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  late final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
