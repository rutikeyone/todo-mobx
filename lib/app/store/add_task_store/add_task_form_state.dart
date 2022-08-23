import 'package:mobx/mobx.dart';
import 'package:to_do/core/domain/entity/end_date_error.dart';
import 'package:to_do/core/domain/entity/form_error.dart';
import 'package:to_do/core/domain/entity/start_date_error.dart';

part 'add_task_form_state.g.dart';

class AddTaskFormState = AddTaskFormStateBase with _$AddTaskFormState;

abstract class AddTaskFormStateBase with Store {
  @observable
  FormError? titleError;

  @observable
  FormError? noteError;

  @observable
  StartDateError? startDateError;

  @observable
  EndDateError? endDateError;

  @computed
  bool get hasErrors =>
      titleError != null ||
      noteError != null ||
      startDateError != null ||
      endDateError != null;
}
