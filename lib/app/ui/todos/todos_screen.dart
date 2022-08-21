import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/theme/theme_store.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/ui/todos/todos_page.dart';
import 'package:to_do/core/di/service_locator/locator.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => TodosStore(
        themeStore: locator.get<ThemeStore>(),
      ),
      child: const TodosPage(),
    );
  }
}
