// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_form_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AddTaskFormState on AddTaskFormStateBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: 'AddTaskFormStateBase.hasErrors'))
          .value;

  late final _$titleErrorAtom =
      Atom(name: 'AddTaskFormStateBase.titleError', context: context);

  @override
  FormError? get titleError {
    _$titleErrorAtom.reportRead();
    return super.titleError;
  }

  @override
  set titleError(FormError? value) {
    _$titleErrorAtom.reportWrite(value, super.titleError, () {
      super.titleError = value;
    });
  }

  late final _$noteErrorAtom =
      Atom(name: 'AddTaskFormStateBase.noteError', context: context);

  @override
  FormError? get noteError {
    _$noteErrorAtom.reportRead();
    return super.noteError;
  }

  @override
  set noteError(FormError? value) {
    _$noteErrorAtom.reportWrite(value, super.noteError, () {
      super.noteError = value;
    });
  }

  late final _$startDateErrorAtom =
      Atom(name: 'AddTaskFormStateBase.startDateError', context: context);

  @override
  StartDateError? get startDateError {
    _$startDateErrorAtom.reportRead();
    return super.startDateError;
  }

  @override
  set startDateError(StartDateError? value) {
    _$startDateErrorAtom.reportWrite(value, super.startDateError, () {
      super.startDateError = value;
    });
  }

  late final _$endDateErrorAtom =
      Atom(name: 'AddTaskFormStateBase.endDateError', context: context);

  @override
  EndDateError? get endDateError {
    _$endDateErrorAtom.reportRead();
    return super.endDateError;
  }

  @override
  set endDateError(EndDateError? value) {
    _$endDateErrorAtom.reportWrite(value, super.endDateError, () {
      super.endDateError = value;
    });
  }

  @override
  String toString() {
    return '''
titleError: ${titleError},
noteError: ${noteError},
startDateError: ${startDateError},
endDateError: ${endDateError},
hasErrors: ${hasErrors}
    ''';
  }
}
