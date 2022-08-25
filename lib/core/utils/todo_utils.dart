import 'package:flutter/cupertino.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/core/utils/easy_snackbar.dart';
import 'package:to_do/generated/l10n.dart';

class TodoUtils {
  void showThemeReaction(ThemeStatus? status, BuildContext context) {
    final easySnackbar = EasySnackbar.of(context: context);
    status == ThemeStatus.setLight
        ? easySnackbar.showSnackbar(
            label: S.of(context).changed_light_theme_message)
        : easySnackbar.showSnackbar(
            label: S.of(context).changed_dark_theme_message);
  }
}
