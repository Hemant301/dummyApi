// To parse this JSON data, do
//
//     final notificationModal = notificationModalFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'notification_modal.freezed.dart';
part 'notification_modal.g.dart';

List<NotificationModal> notificationModalFromJson(String str) =>
    List<NotificationModal>.from(
        json.decode(str).map((x) => NotificationModal.fromJson(x)));

String notificationModalToJson(List<NotificationModal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class NotificationModal with _$NotificationModal {
  const factory NotificationModal({
    String? id,
    String? name,
    String? stateId,
  }) = _NotificationModal;

  factory NotificationModal.fromJson(Map<String, dynamic> json) =>
      _$NotificationModalFromJson(json);
}
