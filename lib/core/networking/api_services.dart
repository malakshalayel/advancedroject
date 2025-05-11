import 'package:advanced_project/core/networking/api_constant.dart';
import 'package:advanced_project/features/login/data/models/login_request.dart';
import 'package:advanced_project/features/login/data/models/login_responce.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart'; // this will be generated

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstant.login)
  Future<LoginResponce> login(@Body() LoginRequest loginRequest);
}
