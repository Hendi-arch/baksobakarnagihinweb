import 'package:app/app/env.dart';
import 'package:app/app/my_app.dart';
import 'package:flutter/material.dart';

void mainApp(EnvType env) {
  /// Initialize global variables
  Env.init(env);

  runApp(const MyApp());
}
