import 'package:advanced_project/core/networking/api_constant.dart';
import 'package:advanced_project/features/home/data/models/specialization_responce.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;
  @GET(ApiConstant.specializations)
  Future<SpecializationsResponseModel> getSpecialization();
}
