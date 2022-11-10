import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newapp/home/domain/notification_modal.dart';
import 'package:newapp/home/domain/notification_modal.dart';

import '../../domain/notification_modal.dart';
import '../../domain/notification_modal.dart';
import '../../domain/notification_modal.dart';
import '../../domain/notification_modal.dart';
import '../../domain/notification_modal.dart';

part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const NotificationState._();
  const factory NotificationState.loading() = _Loading;
  const factory NotificationState.loaded(
      List<NotificationModal> notificationModal) = _Loaded;
  const factory NotificationState.error(String message) = _Error;
}
