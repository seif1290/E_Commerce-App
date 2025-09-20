import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  late final AuthRepo _authRepo;
  AuthCubit({required AuthRepo authRepo}) : super(AuthState.initial()) {
    _authRepo = authRepo;
  }
  Future<void> register({required RegisterModel registerModel}) async {
    try {
      emit(AuthState.loading());
      final result = await _authRepo.register(registerModel: registerModel);
      result.fold(
        (failure) {
          emit(AuthState.failure(errMsg: failure.message));
        },
        (userEntity) {
          emit(AuthState.success(userEntity: userEntity));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(AuthState.failure(errMsg: AppStrings.somethingWrongMessage));
    }
  }
}
