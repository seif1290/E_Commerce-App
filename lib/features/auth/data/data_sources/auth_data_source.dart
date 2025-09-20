import 'dart:developer';

import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class SupabaseAuthDataSource {
  Future<UserModel> register({required RegisterModel registerModel});
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
      log('is session null: ${authResponse.session.toString()}');
      if (authResponse.user != null) {
        return UserModel.fromAuthResponse(authResponse: authResponse);
      } else {
        throw ServerException(message: 'User is null');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
