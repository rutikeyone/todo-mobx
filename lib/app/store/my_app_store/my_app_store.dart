import 'dart:async';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:rxdart/rxdart.dart';
import 'package:to_do/app/store/task_store/task_store.dart';
import 'package:to_do/core/domain/entity/my_app_notification_action.dart';
import 'package:to_do/core/domain/entity/notification_payload.dart';
import 'package:to_do/core/domain/service/notification_service.dart';

part 'my_app_store.g.dart';

class MyAppStore = MyAppStoreBase with _$MyAppStore;

abstract class MyAppStoreBase with Store {
  final NotificationService _notificationService;
  final TaskStore _taskStore;
  late final StreamSubscription<String?> _payloadSubscription;
  final BehaviorSubject<MyAppNotificationAction> _notificationSubject;
  late final ObservableStream<MyAppNotificationAction> notificationActionStream;

  MyAppStoreBase(this._notificationService, this._taskStore)
      : _notificationSubject = BehaviorSubject<MyAppNotificationAction>() {
    _payloadSubscription = _notificationService.onNotification.stream
        .listen(listenNotificationService);
    notificationActionStream = ObservableStream(_notificationSubject.stream);
  }

  void listenNotificationService(String? payload) {
    if (payload != null) {
      final notificationPayload =
          NotificationPayload.fromJson(jsonDecode(payload));
      final task = _taskStore.getTaskById(notificationPayload.id);
      if (task != null) {
        _notificationSubject
            .add(MyAppNotificationAction.navigateToTaskNotification(task));
      }
    }
  }

  void dispose() async {
    await _notificationSubject.close();
    await _payloadSubscription.cancel();
  }
}
