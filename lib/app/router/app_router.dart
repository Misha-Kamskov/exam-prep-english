import 'package:auto_route/auto_route.dart';
import 'package:exam_prep_english/features/practice/modes/official_tests/presentation/official_tests_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../features/main/presentation/screens/main_screen.dart';
import '../../features/practice/presentation/screens/practice_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.custom(
    duration: const Duration(milliseconds: 300),
    reverseDuration: const Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        ),
        child: child,
      );
    },
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      initial: true,
      children: [
        AutoRoute(
          page: PracticeRoute.page,
          path: 'practice',
          initial: true,
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: 'profile',
        ),
      ],
    ),
    AutoRoute(
      page: OfficialTestsRoute.page,
      path: '/official_tests',
    ),
  ];
}