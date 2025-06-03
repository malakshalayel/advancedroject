import 'package:advanced_project/core/networking/api_services.dart';
import 'package:advanced_project/core/networking/dio_factory.dart';
import 'package:advanced_project/features/home/data/apis/home_api_services.dart';
import 'package:advanced_project/features/home/data/repo/home_repo.dart';
import 'package:advanced_project/features/home/logic/cubit/home_cubit.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:advanced_project/features/sign_up.dart/data/repo/signup_repo.dart';
import 'package:advanced_project/features/sign_up.dart/logic/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio); // 👈 ضروري لتسجيل Dio
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiServices>(
    () => HomeApiServices(getIt<Dio>()),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt<HomeApiServices>()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt<HomeRepo>()));
}
