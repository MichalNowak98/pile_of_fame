import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await loadAppFonts();
  return GoldenToolkit.runWithConfiguration(() => testMain(), config: GoldenToolkit.configuration.copyWith(
    defaultDevices: [
      const Device(name: "Small phone", size: Size(300, 400)),
      const Device(name: "Big phone", size: Size(420, 900)),
      const Device(name: "Tablet", size: Size(1024, 1366)),
      const Device(name: "Tablet landscape", size: Size(1366, 1024)),
    ],
    enableRealShadows: true,
    primeAssets: defaultPrimeAssets,
  ),);



}