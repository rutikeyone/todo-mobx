import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:to_do/app/theme/custom_theme.dart';
import 'package:to_do/core/di/my_app_args.dart';
import 'package:to_do/generated/l10n.dart';

class MyApp extends StatelessWidget {
  final MyAppArgs args;

  const MyApp({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      light: CustomTheme.lightTheme,
      dark: CustomTheme.darkTheme,
      builder: (dark, light) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          theme: light,
          darkTheme: dark,
          supportedLocales: S.delegate.supportedLocales,
          routeInformationProvider: args.appRouter.routeInfoProvider(),
          routerDelegate: args.appRouter.delegate(),
          routeInformationParser: args.appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
