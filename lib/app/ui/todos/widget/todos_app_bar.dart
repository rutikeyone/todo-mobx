import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/theme/custom_color.dart';

class TodosAppBar extends StatelessWidget {
  const TodosAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.watch<TodosStore>();
    final iconColor = Theme.of(context).extension<CustomColor>()!.iconColor1;

    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: IconButton(
        icon: Icon(
          store.theme.isDarkMode ? Icons.nightlight_round : Icons.sunny,
          size: 20,
          color: iconColor,
        ),
        onPressed: () => store.toggleChangeTheme(context),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle,
            color: iconColor,
          ),
        ),
      ],
    );
  }
}
