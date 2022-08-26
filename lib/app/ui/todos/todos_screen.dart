import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/ui/todos/todos_page.dart';
import 'package:to_do/core/di/service_locator/locator.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

class TodosScreen extends StatelessWidget {
  final TodosStore _todosStore;
  TodosScreen({Key? key})
      : _todosStore = TodosStore(
          locator.get<ThemeStore>(),
          locator.get<TaskStore>(),
          locator.get<NotificationService>(),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _todosStore,
      child: TodosPage(store: _todosStore),
    );
  }
}
