import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../errors/error_handlers.dart';
import '../domain/news_result_model.dart';
import 'package:dartz/dartz.dart';

class BaseHelper {
  //singleton
  static final BaseHelper _instance = BaseHelper.internal();
  factory BaseHelper() => _instance;
  BaseHelper.internal();

  final String baseUrl = "https://forexblues.com/json/api/";
}

BaseHelper baseHelper = BaseHelper();
ApiRepository apiRepository = ApiRepository();

class ApiRepository {
  //singleton
  static final ApiRepository _instance = ApiRepository.internal();
  factory ApiRepository() => _instance;
  ApiRepository.internal();
  //get news
  Future<Either<ApiFailure, List<NewsModel>>> getApiData(
      {required String endpoint}) async {
    var response = await http.get(Uri.parse(baseHelper.baseUrl + endpoint));
    if (response.statusCode == 200) {
      return right(newsModelFromJson(response.body));
      //  return left( const ApiFailure.serverError('Something went wrong'));
    } else {
      return left( const ApiFailure.serverError('Something went wrong'));
    }
  }
}
