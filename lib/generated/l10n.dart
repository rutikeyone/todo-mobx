// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `You have changed the themes to dark`
  String get changed_dark_theme_message {
    return Intl.message(
      'You have changed the themes to dark',
      name: 'changed_dark_theme_message',
      desc: '',
      args: [],
    );
  }

  /// `You have changed the themes to light`
  String get changed_light_theme_message {
    return Intl.message(
      'You have changed the themes to light',
      name: 'changed_light_theme_message',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Add task`
  String get add_task {
    return Intl.message(
      'Add task',
      name: 'add_task',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Enter title here`
  String get title_hint {
    return Intl.message(
      'Enter title here',
      name: 'title_hint',
      desc: '',
      args: [],
    );
  }

  /// `Empty text field`
  String get empty_text_field {
    return Intl.message(
      'Empty text field',
      name: 'empty_text_field',
      desc: '',
      args: [],
    );
  }

  /// `Invalid value`
  String get invalid_value {
    return Intl.message(
      'Invalid value',
      name: 'invalid_value',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Enter note here`
  String get note_hint {
    return Intl.message(
      'Enter note here',
      name: 'note_hint',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Start time`
  String get start_time {
    return Intl.message(
      'Start time',
      name: 'start_time',
      desc: '',
      args: [],
    );
  }

  /// `End time`
  String get end_time {
    return Intl.message(
      'End time',
      name: 'end_time',
      desc: '',
      args: [],
    );
  }

  /// `Start time is after end time`
  String get start_time_is_after_end_time {
    return Intl.message(
      'Start time is after end time',
      name: 'start_time_is_after_end_time',
      desc: '',
      args: [],
    );
  }

  /// `End time is between start time`
  String get end_time_is_between_start_time {
    return Intl.message(
      'End time is between start time',
      name: 'end_time_is_between_start_time',
      desc: '',
      args: [],
    );
  }

  /// `Remind`
  String get remind {
    return Intl.message(
      'Remind',
      name: 'remind',
      desc: '',
      args: [],
    );
  }

  /// `Repeat`
  String get repeat {
    return Intl.message(
      'Repeat',
      name: 'repeat',
      desc: '',
      args: [],
    );
  }

  /// `5 minutes early`
  String get five_minutes_early {
    return Intl.message(
      '5 minutes early',
      name: 'five_minutes_early',
      desc: '',
      args: [],
    );
  }

  /// `10 minutes early`
  String get ten_minutes_early {
    return Intl.message(
      '10 minutes early',
      name: 'ten_minutes_early',
      desc: '',
      args: [],
    );
  }

  /// `15 minutes early`
  String get fifteen_minutes_early {
    return Intl.message(
      '15 minutes early',
      name: 'fifteen_minutes_early',
      desc: '',
      args: [],
    );
  }

  /// `20 minutes early`
  String get twenty_minutes_early {
    return Intl.message(
      '20 minutes early',
      name: 'twenty_minutes_early',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message(
      'None',
      name: 'none',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get weekly {
    return Intl.message(
      'Weekly',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color {
    return Intl.message(
      'Color',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Successfully added`
  String get successfully_added {
    return Intl.message(
      'Successfully added',
      name: 'successfully_added',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong`
  String get some_error_1 {
    return Intl.message(
      'Oops, something went wrong',
      name: 'some_error_1',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Todo`
  String get todo {
    return Intl.message(
      'Todo',
      name: 'todo',
      desc: '',
      args: [],
    );
  }

  /// `Task completed`
  String get task_completed {
    return Intl.message(
      'Task completed',
      name: 'task_completed',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
