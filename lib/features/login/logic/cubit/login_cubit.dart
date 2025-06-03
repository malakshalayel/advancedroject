import 'package:advanced_project/core/helpers/constant.dart';
import 'package:advanced_project/core/helpers/shared_pref_helper.dart';
import 'package:advanced_project/core/networking/dio_factory.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/login/data/models/login_request.dart';
import 'package:advanced_project/features/login/logic/cubit/login_state.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequest(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (data) async {
        await saveUserToken(data.userData?.token ?? "");
        emit(LoginState.success(data: data));
        // Navigator.of(
        //   formKey.currentContext!,
        // ).pushNamedAndRemoveUntil(Routes.homeScreen, (route) => false);
      },
      failure: (errorHandler) {
        emit(
          LoginState.error(
            error: errorHandler.apiErrorModel.message ?? "error",
          ),
        );
      },
    );
  }
}

Future<void> saveUserToken(String token) async {
  await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  DioFactory.setTokenIntoHeaderAfterLogin(token);
}
