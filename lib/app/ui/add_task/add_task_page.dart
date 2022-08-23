import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/app/ui/add_task/widgets/add_task_app_bar.dart';
import 'package:to_do/app/ui/add_task/widgets/info_picker.dart';
import 'package:to_do/app/ui/add_task/widgets/text_input_field_type_one.dart';
import 'package:to_do/app/ui/widgets/todo_button_type_one.dart';
import 'package:to_do/core/domain/entity/end_date_error.dart';
import 'package:to_do/core/domain/entity/form_error.dart';
import 'package:to_do/core/domain/entity/start_date_error.dart';
import 'package:to_do/generated/l10n.dart';

class AddTaskPage extends StatefulWidget {
  final AddTaskStore store;

  const AddTaskPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  String? validateTextField(FormError? error, BuildContext context) {
    if (error != null) {
      return error.when(
        nullOrEmpty: () => S.of(context).empty_text_field,
        invalid: () => S.of(context).invalid_value,
      );
    }
    return null;
  }

  String? validateStartDate(StartDateError? error, BuildContext context) {
    if (error != null) {
      return error.when(
          isAfter: () => S.of(context).start_time_is_after_end_time);
    }
    return null;
  }

  String? validateEndDate(EndDateError? error, BuildContext context) {
    if (error != null) {
      return error.when(
          isBetween: () => S.of(context).end_time_is_between_start_time);
    }
    return null;
  }

  @override
  void dispose() {
    widget.store.dispose();
    super.dispose();
  }

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
                Observer(
                  builder: (_) => TextInputFieldTypeOne(
                    title: S.of(context).title,
                    hint: S.of(context).title_hint,
                    onChanged: (value) => widget.store.title = value,
                    error: validateTextField(
                        widget.store.addTaskFormState.titleError, context),
                  ),
                ),
                Observer(
                  builder: (_) => TextInputFieldTypeOne(
                    title: S.of(context).note,
                    topPadding: 8,
                    hint: S.of(context).note_hint,
                    onChanged: (value) => widget.store.note = value,
                    error: validateTextField(
                        widget.store.addTaskFormState.noteError, context),
                  ),
                ),
                Observer(
                  builder: (_) => InfoPicker(
                    width: MediaQuery.of(context).size.width,
                    title: S.of(context).date,
                    value: DateFormat('dd/MM/yy').format(widget.store.date),
                    onTap: () => widget.store.changeDate(
                      showDatePicker(
                        context: context,
                        initialDate: widget.store.date,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(widget.store.date.year + 100),
                      ),
                    ),
                  ),
                ),
                Observer(
                  builder: (_) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InfoPicker(
                            title: S.of(context).start_time,
                            value: widget.store.startTime.format(context),
                            error: validateStartDate(
                                widget.store.addTaskFormState.startDateError,
                                context),
                            onTap: () => widget.store.changeStartTime(
                              showTimePicker(
                                context: context,
                                initialTime: widget.store.startTime,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: InfoPicker(
                            title: S.of(context).end_time,
                            value: widget.store.endTime.format(context),
                            error: validateEndDate(
                                widget.store.addTaskFormState.endDateError,
                                context),
                            onTap: () => widget.store.changeEndTime(
                              showTimePicker(
                                context: context,
                                initialTime: widget.store.endTime,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ToDoButtonTypeOne(
                      label: S.of(context).add_task,
                      onPressed: widget.store.addTask,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
