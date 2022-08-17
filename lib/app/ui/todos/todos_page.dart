import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/ui/todos/widget/todos_app_bar.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  late final TodosStore store;
  late final ReactionDisposer themeReaction;

  @override
  void initState() {
    super.initState();
    store = Provider.of<TodosStore>(context, listen: false);
    themeReaction = reaction<ThemeStatus?>(
      ((_) => store.themeStream.value),
      (value) => value == ThemeStatus.setLight
          ? AdaptiveTheme.of(context).setLight()
          : AdaptiveTheme.of(context).setDark(),
    );
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: TodosAppBar(),
      ),
      body: Center(),
    ));
  }
}
