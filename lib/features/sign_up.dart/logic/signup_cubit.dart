import 'package:advanced_project/features/sign_up.dart/data/models/signup_request.dart';
import 'package:advanced_project/features/sign_up.dart/data/repo/signup_repo.dart';
import 'package:advanced_project/features/sign_up.dart/logic/signup_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signupRepo) : super(const SignupState.initial());
  final SignupRepo _signupRepo;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void emitSignupState() async {
    final response = await _signupRepo.signup(
      SignupRequest(
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        name: nameController.text,
        passwordConfirmation: confirmPasswordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(SignupState.success(data: data));
      },
      failure: (errorHandler) {
        emit(
          SignupState.error(
            error: errorHandler.apiErrorModel.message ?? "error",
          ),
        );
      },
    );
  }
}
