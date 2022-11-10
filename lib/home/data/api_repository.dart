import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:newapp/home/domain/notification_modal.dart';

import '../../errors/error_handlers.dart';
import '../../feature/data/api_repository.dart';
import '../../feature/domain/news_result_model.dart';
import 'package:http/http.dart' as http;

ApiRepositoryNotification apiRepositoryNotification =
    ApiRepositoryNotification();

class ApiRepositoryNotification {
  //singleton
  static final ApiRepositoryNotification _instance =
      ApiRepositoryNotification.internal();
  factory ApiRepositoryNotification() => _instance;
  ApiRepositoryNotification.internal();
  //get notification
  Future<Either<ApiFailure, List<NotificationModal>>> getApiData(
      {required String endpoint}) async {
    var response = await http.get(Uri.parse(baseHelper.baseUrl + endpoint));
    if (response.statusCode == 200) {
      return right(notificationModalFromJson(response.body));
      //  return left( const ApiFailure.serverError('Something went wrong'));
    } else {
      log("ererfrerr");
      return left(const ApiFailure.serverError('Something went wrong'));
    }
  }
}
