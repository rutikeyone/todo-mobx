import 'package:flutter/material.dart';
import 'package:to_do/app/routes/app_router.dart';
import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/domain/service/db_service.dart';

abstract class DIContainer {
  AppRouter makeAppRouter();

  TaskDatabase makeTaskDb();

  DbService makeDbService();

  Widget makeApp();
}
