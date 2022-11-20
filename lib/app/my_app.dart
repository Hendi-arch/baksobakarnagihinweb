import 'package:app/app/env.dart';
import 'package:app/app/navigator_util.dart';
import 'package:app/app/on_generate_routes.dart';
import 'package:app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Env.data.title,
      debugShowMaterialGrid: Env.data.debugShowMaterialGrid,
      debugShowCheckedModeBanner: Env.data.debugShowCheckedModeBanner,
      onGenerateRoute: OnGeneratedRoutes.allRoutes,
      onGenerateInitialRoutes: OnGeneratedRoutes.initialRoute,
      navigatorKey: AppNavigatorKey.get(),
      scaffoldMessengerKey: AppNavigatorKey.getScaffoldMessengerKey(),
      theme: ThemeData(
        primarySwatch: AppTheme.myPrimarySwatch,
      ),
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: MediaQuery.of(context).size.width,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
        );
      },
    );
  }
}
