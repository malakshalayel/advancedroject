import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/features/sign_up.dart/data/models/signup_request.dart';
import 'package:advanced_project/features/sign_up.dart/data/models/signup_responce.dart';

class SignupRepo {
  ApiService _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponce>> signup(SignupRequest signupRequest) async {
    try {
      final responce = await _apiService.signup(signupRequest);
      return ApiResult.success(responce);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
