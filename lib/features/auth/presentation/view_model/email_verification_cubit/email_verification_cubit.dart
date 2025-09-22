import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_state.dart';
part 'email_verification_cubit.freezed.dart';

class EmailVerificationCubit extends Cubit<EmailVerificationState> {
  late final AuthRepo _authRepo;
  EmailVerificationCubit({required AuthRepo authRepo})
    : _authRepo = authRepo,
      super(EmailVerificationState.initial());

  Future<void> signOut() async {
    emit(EmailVerificationState.signOutLoading());
    final result = await _authRepo.singOut();
    result.fold(
      (failure) =>
          emit(EmailVerificationState.signOutFailure(errMSg: failure.message)),
      (success) => emit(EmailVerificationState.signOutSuccess()),
    );
  }
}
