import 'package:flutter/material.dart';
import 'package:to_do/app/routes/app_router.dart';

abstract class DIContainer {
  AppRouter makeAppRouter();

  Widget makeApp();
}
