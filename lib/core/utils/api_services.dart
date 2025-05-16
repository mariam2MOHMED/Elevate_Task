import 'package:dio/dio.dart';
import 'package:elevatetask/core/constants/constants.dart';

class ApiServices{
  final Dio dio=Dio(
BaseOptions(
  baseUrl: AppConstants.baseurl,
  receiveDataWhenStatusError: true
)
  );
  Future  get({required String endPoint}) async {
    final response=await dio.get("$endPoint");
    return response.data;
  }
}