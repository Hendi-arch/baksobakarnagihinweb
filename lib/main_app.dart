import 'package:app/app/env.dart';
import 'package:app/app/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void mainApp(EnvType env) async {
  /// Ensure flutter is initialization
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize global variables
  Env.init(env);

  /// Firebase core initialization
  await Firebase.initializeApp(options: Env.data.firebaseOptions);

  /// Use the [PathUrlStrategy] to handle the browser URL.
  usePathUrlStrategy();

  runApp(const MyApp());
}
