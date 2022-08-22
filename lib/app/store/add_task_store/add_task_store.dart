import 'package:flutter_mobx_form_validation_kit/form-control.dart';
import 'package:flutter_mobx_form_validation_kit/form-group.dart';
import 'package:mobx/mobx.dart';
import 'package:to_do/app/store/add_task_store/add_task_form.dart';

part 'add_task_store.g.dart';

class AddTaskStore = AddTaskStoreBase with _$AddTaskStore;

abstract class AddTaskStoreBase with Store {
  late final FormGroup<AddTaskForm> _addTaskForm;
  FormGroup<AddTaskForm> get addTaskForm => _addTaskForm;

  AddTaskStoreBase() {
    _addTaskForm = initTaskForm();
  }

  FormGroup<AddTaskForm> initTaskForm() => FormGroup(AddTaskForm(
      title:
          FormControl(value: '', options: OptionsFormControl(validators: [])),
      note:
          FormControl(value: '', options: OptionsFormControl(validators: []))));

  void dispose() {
    _addTaskForm.dispose();
  }
}
