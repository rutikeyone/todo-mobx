import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do/app/routes/app_router.dart';
import 'package:to_do/app/store/my_app_store/my_app_store.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:to_do/app/theme/custom_theme.dart';
import 'package:to_do/core/di/service_locator/locator.dart';
import 'package:to_do/core/di/my_app_args.dart';
import 'package:to_do/core/domain/entity/my_app_notification_action.dart';
import 'package:to_do/core/domain/service/notification_service.dart';
import 'package:to_do/generated/l10n.dart';

class MyApp extends StatefulWidget {
  final MyAppArgs args;

  const MyApp({Key? key, required this.args}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final MyAppStore myAppStore;
  late final StreamSubscription<MyAppNotificationAction>
      myAppNotificationSubscription;

  @override
  void initState() {
    myAppStore = MyAppStore(
      locator.get<NotificationService>(),
      locator.get<TaskStore>(),
    );
    myAppNotificationSubscription =
        myAppStore.notificationActionStream.listen(listenNotificationAction);
    super.initState();
  }

  void listenNotificationAction(MyAppNotificationAction action) {
    action.when(
      navigateToTaskNotification: (value) =>
          widget.args.appRouter.push(TaskNotificationScreenRoute(task: value)),
    );
  }

  @override
  void dispose() {
    myAppStore.dispose();
    myAppNotificationSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        themeMode: locator.get<ThemeStore>().themeMode,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        supportedLocales: S.delegate.supportedLocales,
        routeInformationProvider: widget.args.appRouter.routeInfoProvider(),
        routerDelegate: widget.args.appRouter.delegate(),
        routeInformationParser: widget.args.appRouter.defaultRouteParser(),
      ),
    );
  }
}
