import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do/app/routes/app_router.dart';
import 'package:to_do/app/store/todos_store/todos_store.dart';
import 'package:to_do/app/ui/todos/widget/task_tile.dart';
import 'package:to_do/app/ui/todos/widget/todos_date_picker.dart';
import 'package:to_do/app/ui/todos/widget/add_task_tile.dart';
import 'package:to_do/app/ui/todos/widget/todos_app_bar.dart';
import 'package:to_do/core/utils/todo_utils.dart';

class TodosPage extends StatefulWidget {
  final TodosStore store;

  const TodosPage({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> with TodoUtils {
  late final ReactionDisposer themeReaction;

  @override
  void initState() {
    super.initState();
    themeReaction = reaction<ThemeStatus?>(
      ((_) => widget.store.themeStream.value),
      (value) => showThemeReaction(value, context),
    );
  }

  @override
  void dispose() {
    widget.store.dispose();
    themeReaction();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const PreferredSize(
                    preferredSize: Size.fromHeight(55),
                    child: TodosAppBar(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        AddTaskTile(
                          addTaskOnPressed: () =>
                              context.router.push(AddTaskScreenRoute()),
                        ),
                        TodosDatePicker(
                          changeDateTime: widget.store.changeSelectedDateTime,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Observer(builder: (_) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: widget.store.tasks.length,
                  (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      child: SlideAnimation(
                        child: FadeInAnimation(
                          child: TaskTile(
                            task: widget.store.tasks[index],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
