part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.initial() = _Initial;
  const factory LoadingState.onboardingStarted() = _OnboardingStarted;
  const factory LoadingState.userNotAuthenticated({required String message}) =
      _UserNotAuthenticated;
  const factory LoadingState.userAuthenticatedButNotVerified() =
      _UserAuthenticatedButNotVerified;
  const factory LoadingState.userAuthenticatedAndVerified() =
      _UserAuthenticatedAndVerified;
}
