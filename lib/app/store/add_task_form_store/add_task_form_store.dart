import 'package:flutter_mobx_form_validation_kit/abstract-control.dart';
import 'package:flutter_mobx_form_validation_kit/form-abstract-group.dart';
import 'package:flutter_mobx_form_validation_kit/form-control.dart';

class AddTaskFormStore extends ControlsCollection {
  final FormControl<String> title;
  final FormControl<String> note;

  AddTaskFormStore({
    required this.title,
    required this.note,
  });

  @override
  Iterable<AbstractControl> allFields() => [title, note];
}
