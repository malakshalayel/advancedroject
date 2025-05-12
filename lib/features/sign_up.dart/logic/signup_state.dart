import 'package:advanced_project/features/sign_up.dart/data/models/signup_responce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = SignupLoading;
  const factory SignupState.success({required T data}) = SignupSuccess;
  const factory SignupState.error({required String error}) = SignupError;
}
