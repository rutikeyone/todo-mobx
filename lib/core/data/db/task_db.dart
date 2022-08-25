import 'package:to_do/core/data/model/task.dart';

abstract class TaskDatabase {
  Future<List<Task>> getTasks();

  Future<int> add(Task task);

  Future<int> remove(int id);

  Future<int> update(Task task);
}
