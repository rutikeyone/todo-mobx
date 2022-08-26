import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:to_do/app/store/add_task_store/add_task_store.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';
import 'package:to_do/app/ui/add_task/widgets/add_task_app_bar.dart';
import 'package:to_do/app/ui/add_task/widgets/color_tile.dart';
import 'package:to_do/app/ui/add_task/widgets/info_picker.dart';
import 'package:to_do/app/ui/add_task/widgets/text_input_field_type_one.dart';
import 'package:to_do/app/ui/dialog/custom_dialog_type_one.dart';
import 'package:to_do/app/ui/widgets/todo_button_type_one.dart';
import 'package:to_do/core/domain/entity/db_result.dart';
import 'package:to_do/core/domain/entity/remind.dart';
import 'package:to_do/core/domain/extension/list_ext.dart';
import 'package:to_do/core/utils/add_task_utils.dart';

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

class _AddTaskPageState extends State<AddTaskPage> with AddTaskUtils {
  late final StreamSubscription<DbResult> _dbResultSubscription;

  @override
  void initState() {
    _dbResultSubscription = widget.store.dbResultStream
        .listen((value) => showDbResultReaction(context, value));
    super.initState();
  }

  @override
  void dispose() {
    _dbResultSubscription.cancel();
    widget.store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).extension<CustomColor>()!.iconColor1;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  PreferredSize(
                    preferredSize: const Size.fromHeight(55),
                    child: AddTaskAppBar(iconColor: iconColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).add_task,
                          style: Theme.of(context)
                              .extension<CustomTextTheme>()!
                              .heading1,
                        ),
                        Observer(
                          builder: (_) => TextInputFieldTypeOne(
                            title: S.of(context).title,
                            hint: S.of(context).title_hint,
                            onChanged: (value) => widget.store.title = value,
                            error: validateTextField(
                                widget.store.addTaskFormState.titleError,
                                context),
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Observer(
                          builder: (_) => TextInputFieldTypeOne(
                            title: S.of(context).note,
                            topPadding: 8,
                            hint: S.of(context).note_hint,
                            onChanged: (value) => widget.store.note = value,
                            error: validateTextField(
                                widget.store.addTaskFormState.noteError,
                                context),
                          ),
                        ),
                        Observer(
                          builder: (_) => InfoPicker(
                            width: MediaQuery.of(context).size.width,
                            title: S.of(context).date,
                            icon: Icon(
                              Icons.calendar_today_sharp,
                              color: Theme.of(context)
                                  .extension<CustomColor>()!
                                  .iconColor1,
                            ),
                            value: DateFormat('dd/MM/yy')
                                .format(widget.store.date),
                            onTap: () => widget.store.changeDate(
                              showDatePicker(
                                context: context,
                                initialDate: widget.store.date,
                                firstDate: DateTime.now(),
                                lastDate:
                                    DateTime(widget.store.date.year + 100),
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
                                    value:
                                        widget.store.startTime.format(context),
                                    icon: Icon(
                                      Icons.access_time,
                                      color: Theme.of(context)
                                          .extension<CustomColor>()!
                                          .iconColor1,
                                    ),
                                    error: validateStartDate(
                                        widget.store.addTaskFormState
                                            .startDateError,
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
                                    icon: Icon(
                                      Icons.access_time,
                                      color: Theme.of(context)
                                          .extension<CustomColor>()!
                                          .iconColor1,
                                    ),
                                    error: validateEndDate(
                                        widget.store.addTaskFormState
                                            .endDateError,
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
                        Observer(
                          builder: (_) => InfoPicker(
                            width: MediaQuery.of(context).size.width,
                            title: S.of(context).remind,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Theme.of(context)
                                  .extension<CustomColor>()!
                                  .iconColor1,
                            ),
                            value: parseRemind(widget.store.remind, context),
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => CustomDialogTypeOne<Remind>(
                                title: S.of(context).remind,
                                items: remindItems.toMap((e) =>
                                    MapEntry(parseRemind(e, context), e)),
                                selectedItem: widget.store.remind,
                                onSelect: (value) =>
                                    widget.store.changeRemind(value),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Observer(
                                builder: (_) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        S.of(context).color,
                                        style: Theme.of(context)
                                            .extension<CustomTextTheme>()!
                                            .heading3,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Row(
                                          children: colors
                                              .map(
                                                (e) => ColorTile(
                                                  edgeInsets:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  isSelected:
                                                      widget.store.color == e,
                                                  taskColor: e,
                                                  onTap:
                                                      widget.store.changeColor,
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              ToDoButtonTypeOne(
                                label: S.of(context).add_task,
                                onPressed: widget.store.addTask,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
