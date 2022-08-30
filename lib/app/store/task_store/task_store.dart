import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:to_do/core/data/model/task.dart';
import 'package:to_do/core/domain/entity/db_result.dart';
import 'package:to_do/core/domain/service/db_service.dart';

part 'task_store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  final DbService _dbService;

  @observable
  List<Task> tasks = <Task>[];

  TaskStoreBase(this._dbService);

  Future initTasks() async {
    final tasks = await _dbService.getTasks();
    this.tasks = tasks;
  }

  @action
  Future<DbResult> add(Task task) async {
    final dbResult = await _dbService.add(task);
    await dbResult.when(
      success: () async => tasks = await _dbService.getTasks(),
      failure: () {},
    );
    return dbResult;
  }

  @action
  Future<DbResult> remove(int id) async {
    final dbResult = await _dbService.remove(id);
    await dbResult.when(
      success: () async => tasks = await _dbService.getTasks(),
      failure: () {},
    );
    return dbResult;
  }

  @action
  Future<DbResult> update(Task task) async {
    final dbResult = await _dbService.update(task);
    await dbResult.when(
      success: () async => tasks = await _dbService.getTasks(),
      failure: () {},
    );
    return dbResult;
  }

  Task? getTaskById(int id) => tasks.firstWhere((element) => element.id == id);
}
