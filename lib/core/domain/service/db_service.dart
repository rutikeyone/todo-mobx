import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/data/model/task.dart';

abstract class DbService {
  final TaskDatabase db;

  const DbService(this.db);

  Future<List<Task>> getTasks();

  Future add(Task task);

  Future remove(int id);

  Future update(Task task);
}
