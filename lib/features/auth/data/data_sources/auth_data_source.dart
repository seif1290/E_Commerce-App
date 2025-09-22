import 'package:e_commerce/core/error_handling/auth_error_handler.dart';
import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/auth/data/models/login_model.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/core/shared/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class SupabaseAuthDataSource {
  Future<UserModel> register({required RegisterModel registerModel});
  Future<UserModel> login({required LoginModel loginModel});
  Future<void> logout();
}

class SupabaseAuthDataSourceImpl implements SupabaseAuthDataSource {
  late final SupabaseClient _supabaseClient;

  SupabaseAuthDataSourceImpl({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  @override
  Future<UserModel> register({required RegisterModel registerModel}) async {
    try {
      final AuthResponse authResponse = await _supabaseClient.auth.signUp(
        email: registerModel.email,
        password: registerModel.password,
        data: registerModel.toJson(),
      );

      if (authResponse.user != null) {
        return UserModel.fromAuthResponse(authResponse: authResponse);
      } else {
        throw ServerException(message: 'User is null');
      }
    } on AuthException catch (e) {
      throw ServerException(message: AuthErrorHandler.mapAuthErrorToMessage(e));
    } catch (_) {
      throw ServerException(message: AppStrings.somethingWrongMsg);
    }
  }

  @override
  Future<UserModel> login({required LoginModel loginModel}) async {
    try {
      final AuthResponse authResponse = await _supabaseClient.auth
          .signInWithPassword(
            email: loginModel.email,
            password: loginModel.password,
          );
      if (authResponse.user != null) {
        return UserModel.fromAuthResponse(authResponse: authResponse);
      } else {
        throw ServerException(message: 'User is null');
      }
    } on AuthException catch (e) {
      throw ServerException(message: AuthErrorHandler.mapAuthErrorToMessage(e));
    } catch (_) {
      throw ServerException(message: AppStrings.somethingWrongMsg);
    }
  }

  @override
  Future logout() async {
    try {
      await _supabaseClient.auth.signOut();
    } on AuthException catch (e) {
      throw ServerException(message: AuthErrorHandler.mapAuthErrorToMessage(e));
    } catch (_) {
      throw ServerException(message: AppStrings.somethingWrongMsg);
    }
  }
}
