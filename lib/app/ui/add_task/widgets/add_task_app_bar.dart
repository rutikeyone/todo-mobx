import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AddTaskAppBar extends StatelessWidget {
  const AddTaskAppBar({
    Key? key,
    required this.iconColor,
  }) : super(key: key);

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: iconColor,
        ),
        onPressed: () => context.router.pop(),
      ),
    );
  }
}
