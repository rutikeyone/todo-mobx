import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/data/model/task.dart';
import 'package:to_do/core/domain/entity/db_result.dart';

abstract class DbService {
  final TaskDatabase db;

  const DbService(this.db);

  Future<List<Task>> getTasks();

  Future<DbResult> add(Task task);

  Future<DbResult> remove(int id);

  Future<DbResult> update(Task task);
}
