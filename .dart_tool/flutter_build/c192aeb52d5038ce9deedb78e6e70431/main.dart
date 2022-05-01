// @dart=2.9

import 'dart:ui' as ui;

import 'package:bigfoot/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
