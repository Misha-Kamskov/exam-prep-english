import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/app_initializer.dart';

Future<void> main() async {
  await AppInitializer.init();
  runApp(App());
}