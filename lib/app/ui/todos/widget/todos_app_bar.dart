import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';

class TodosAppBar extends StatelessWidget {
  const TodosAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.read<TodosStore>();

    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.nightlight_round,
          size: 20,
        ),
        onPressed: () => store.toggleChangeTheme(context),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.person,
          ),
        ),
      ],
    );
  }
}
