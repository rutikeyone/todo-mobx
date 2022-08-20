import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/ui/todos/widget/todos_app_bar.dart';
import 'package:to_do/core/utils/easy_snackbar.dart';
import 'package:to_do/generated/l10n.dart';

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
          ? setTheme(AdaptiveThemeMode.light,
              S.of(context).changed_light_theme_message)
          : setTheme(
              AdaptiveThemeMode.dark, S.of(context).changed_dark_theme_message),
    );
  }

  void setTheme(AdaptiveThemeMode themeMode, String label) {
    AdaptiveTheme.of(context).setThemeMode(themeMode);
    EasySnackbar.of(context: context).showSnackbar(label: label);
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: TodosAppBar(),
      ),
      body: Center(),
    ));
  }
}
