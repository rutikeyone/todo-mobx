import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/data/model/task.dart';
import 'package:to_do/core/domain/entity/db_result.dart';
import 'package:to_do/core/domain/service/db_service.dart';

class DbServiceImpl extends DbService {
  const DbServiceImpl(TaskDatabase db) : super(db);

  @override
  Future<DbResult> add(Task task) async {
    try {
      await db.add(task);
      return const DbResult.success();
    } catch (e) {
      return const DbResult.failure();
    }
  }

  @override
  Future<List<Task>> getTasks() async {
    return await db.getTasks();
  }

  @override
  Future<DbResult> remove(int id) async {
    try {
      await db.remove(id);
      return const DbResult.success();
    } catch (e) {
      return const DbResult.failure();
    }
  }

  @override
  Future<DbResult> update(Task task) async {
    try {
      await db.update(task);
      return const DbResult.success();
    } catch (e) {
      return const DbResult.failure();
    }
  }
}
