import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/features/login/data/models/login_request.dart';
import 'package:advanced_project/features/login/data/models/login_responce.dart';

class LoginRepo {
  final ApiService _apiServices;
  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponce>> login(LoginRequest loginRequest) async {
    try {
      final responce = await _apiServices.login(loginRequest);
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
