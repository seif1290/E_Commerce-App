part of 'email_verification_cubit.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = _Initial;
  const factory EmailVerificationState.signOutLoading() = _SignOutLoading;
  const factory EmailVerificationState.signOutSuccess() = _SignOutSuccess;
  const factory EmailVerificationState.signOutFailure({
    required String errMSg,
  }) = _SignOutFailure;
}
