import 'dart:math';

import 'package:advanced_project/core/networking/api_result.dart';
import 'package:advanced_project/features/login/data/models/login_request.dart';
import 'package:advanced_project/features/login/data/models/login_responce.dart';
import 'package:advanced_project/features/login/logic/cubit/login_state.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
        emit(LoginState.success(data: data));
        final token = data.userData?.token;
        print("Token: $token");
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
