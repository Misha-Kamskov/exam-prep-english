import 'package:exam_prep_english/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'di/injection.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  App({super.key});

  late final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
