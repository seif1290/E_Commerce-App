import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/shared/entities/user_entity.dart';
import 'package:e_commerce/features/loading/data/repos/loading_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.dart';
part 'loading_cubit.freezed.dart';

class LoadingCubit extends Cubit<LoadingState> {
  late final LoadingRepo _loadingRepo;
  LoadingCubit({required LoadingRepo loadingRepo})
    : super(LoadingState.initial()) {
    _loadingRepo = loadingRepo;
  }
  Future<void> handleUserState() async {
    if (!_loadingRepo.isOnboardingFinished) {
      emit(LoadingState.onboardingStarted());
    } else {
      final res = _loadingRepo.getUser();
      return res.fold(
        (failure) {
          // No user signed in
          emit(LoadingState.userNotAuthenticated(message: failure.message));
        },
        (userEntity) {
          if (userEntity.isEmailConfirmed) {
            // email verified
            emit(
              LoadingState.userAuthenticatedAndVerified(userEntity: userEntity),
            );
          } else {
            // email not verified
            emit(
              LoadingState.userAuthenticatedButNotVerified(
                currentEmail: userEntity.email,
              ),
            );
          }
        },
      );
    }
  }
}
