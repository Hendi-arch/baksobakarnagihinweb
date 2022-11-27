import 'package:firebase_core/firebase_core.dart';

enum EnvType { develop, production }

class Env {
  static EnvData? _env;

  static EnvData get data => _env!;

  static void init(EnvType env) {
    switch (env) {
      case EnvType.develop:
        _env = Env.dev;
        break;
      case EnvType.production:
        _env = Env.prod;
        break;
      default:
    }
  }

  static final EnvData dev = EnvData(
    debug: true,
    debugShowCheckedModeBanner: true,
    debugShowMaterialGrid: false,
    title: "Bakso Bakar Nagihin TEST",
    firebaseOptions: const FirebaseOptions(
      apiKey: "AIzaSyAVknoPM_iOS6Cjf-VDLK9gJZZdrMxnS3w",
      authDomain: "baksobakarnagihin.firebaseapp.com",
      projectId: "baksobakarnagihin",
      storageBucket: "baksobakarnagihin.appspot.com",
      messagingSenderId: "531224995690",
      appId: "1:531224995690:web:437c65471f3575d153a713",
      measurementId: "G-XKTQB27MZ7",
    ),
  );

  static final EnvData prod = EnvData(
    debug: false,
    debugShowCheckedModeBanner: false,
    debugShowMaterialGrid: false,
    title: "Bakso Bakar Nagihin",
    firebaseOptions: const FirebaseOptions(
      apiKey: "AIzaSyAVknoPM_iOS6Cjf-VDLK9gJZZdrMxnS3w",
      authDomain: "baksobakarnagihin.firebaseapp.com",
      projectId: "baksobakarnagihin",
      storageBucket: "baksobakarnagihin.appspot.com",
      messagingSenderId: "531224995690",
      appId: "1:531224995690:web:437c65471f3575d153a713",
      measurementId: "G-XKTQB27MZ7",
    ),
  );
}

class EnvData {
  final bool debug;
  final bool debugShowCheckedModeBanner;
  final bool debugShowMaterialGrid;
  final String title;
  final FirebaseOptions firebaseOptions;

  EnvData({
    required this.debug,
    required this.debugShowCheckedModeBanner,
    required this.debugShowMaterialGrid,
    required this.title,
    required this.firebaseOptions,
  });
}
