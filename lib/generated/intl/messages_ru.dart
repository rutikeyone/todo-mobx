// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_task": MessageLookupByLibrary.simpleMessage("Добавить"),
        "changed_dark_theme_message":
            MessageLookupByLibrary.simpleMessage("Вы изменили цвет на темную"),
        "changed_light_theme_message":
            MessageLookupByLibrary.simpleMessage("Вы изменили цвет на светлую"),
        "date": MessageLookupByLibrary.simpleMessage("Дата"),
        "empty_text_field":
            MessageLookupByLibrary.simpleMessage("Пустое текстовое поле"),
        "end_time": MessageLookupByLibrary.simpleMessage("Конец"),
        "end_time_is_between_start_time": MessageLookupByLibrary.simpleMessage(
            "Дата конца раньше даты начала"),
        "invalid_value":
            MessageLookupByLibrary.simpleMessage("Некорректное значение"),
        "note": MessageLookupByLibrary.simpleMessage("Запись"),
        "note_hint": MessageLookupByLibrary.simpleMessage("Введите запись"),
        "start_time": MessageLookupByLibrary.simpleMessage("Начало"),
        "start_time_is_after_end_time": MessageLookupByLibrary.simpleMessage(
            "Дата начала после даты окончания"),
        "title": MessageLookupByLibrary.simpleMessage("Заголовок"),
        "title_hint": MessageLookupByLibrary.simpleMessage("Введите заголовок"),
        "today": MessageLookupByLibrary.simpleMessage("Сегодня")
      };
}
