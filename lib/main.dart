import 'dart:ui';

import 'package:deteksi_kurma/MyApp.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  DartPluginRegistrant.ensureInitialized();

  runApp(const MyApp());
}
