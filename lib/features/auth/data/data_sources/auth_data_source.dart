import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class SupabaseAuthDataSource {
  Future<String> register({required RegisterModel registerModel});
}

class SupabaseAuthDataSourceImpl implements SupabaseAuthDataSource {
  late final SupabaseClient _supabaseClient;

  SupabaseAuthDataSourceImpl({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  @override
  Future<String> register({required RegisterModel registerModel}) async {
    try {
      final authResponse = await _supabaseClient.auth.signUp(
        email: registerModel.email,
        password: registerModel.password,
        data: registerModel.toJson(),
      );
      if (authResponse.user != null) {
        return authResponse.user!.id;
      } else {
        return AppStrings.userIsNullMessage;
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
