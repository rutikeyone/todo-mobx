import 'package:to_do/core/data/db/task_db.dart';
import 'package:to_do/core/data/model/task.dart';
import 'package:to_do/core/domain/service/db_service.dart';

class DbServiceImpl extends DbService {
  const DbServiceImpl(TaskDatabase db) : super(db);

  @override
  Future add(Task task) {
    return db.add(task);
  }

  @override
  Future<List<Task>> getTasks() {
    return db.getTasks();
  }

  @override
  Future remove(int id) {
    return db.remove(id);
  }

  @override
  Future update(Task task) {
    return db.update(task);
  }
}
