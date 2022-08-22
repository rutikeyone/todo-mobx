import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/app/ui/add_task/widgets/add_task_app_bar.dart';
import 'package:to_do/app/ui/add_task/widgets/text_input_field_type_one.dart';
import 'package:to_do/generated/l10n.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).extension<CustomColor>()!.iconColor1;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AddTaskAppBar(iconColor: iconColor),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).add_task,
                  style:
                      Theme.of(context).extension<CustomTextTheme>()!.heading1,
                ),
                TextInputFieldTypeOne(
                    title: S.of(context).title, hint: S.of(context).title_hint),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
