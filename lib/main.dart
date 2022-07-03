import 'dart:async';

import 'package:flutter/material.dart';

import 'src/application/app.dart';
import 'src/application/di/injection_container.dart' as di;

void main() async {
  await runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _registerDependencies();
    runApp(App());
  });
}

Future<void> _registerDependencies() async {
  await di.init();
}
