import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
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
          ? EasySnackbar.of(context: context)
              .showSnackbar(label: S.of(context).changed_light_theme_message)
          : EasySnackbar.of(context: context)
              .showSnackbar(label: S.of(context).changed_dark_theme_message),
    );
  }

  @override
  void dispose() {
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: TodosAppBar(),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat.yMMMEd().format(DateTime.now()),
                      style: Theme.of(context)
                          .extension<CustomTextTheme>()!
                          .subHeading1,
                    ),
                    Text(
                      S.of(context).today,
                      style: Theme.of(context)
                          .extension<CustomTextTheme>()!
                          .heading1,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
