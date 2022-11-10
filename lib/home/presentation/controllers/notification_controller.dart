import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../../feature/data/api_repository.dart';
import '../../data/api_repository.dart';
import '../state/notification_state.dart';

class NotificationController extends ChangeNotifier {
  NotificationState _state = NotificationState.loading();
  NotificationState get state => _state;

  Future<void> NotificationData() async {
    var resp = await apiRepositoryNotification.getApiData(
        endpoint:
            'cities-v2.php?authkey=w98dfx4t321sfef9872r54inp54er43rgj0987s&state_id=77');
    print(jsonEncode(resp));
    resp.fold(
      (l) => _state = NotificationState.error(l.msg),
      (r) => _state = NotificationState.loaded(r),
    );
    notifyListeners();
  }
}
