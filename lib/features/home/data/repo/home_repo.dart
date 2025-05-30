import 'package:advanced_project/core/networking/api_error_handler.dart';
import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/features/home/data/apis/home_api_services.dart';
import 'package:advanced_project/features/home/data/models/specialization_responce.dart';

class HomeRepo {
  HomeApiServices homeApiServices;
  HomeRepo(this.homeApiServices);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await homeApiServices.getSpecialization();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
