import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/core/shared/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class LoadingDataSource {
  UserModel getUser();
}

class LoadingDataSourceImpl implements LoadingDataSource {
  late final SupabaseClient _supabaseClient;

  LoadingDataSourceImpl({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;
  @override
  UserModel getUser() {
    try {
      final currentUser = _supabaseClient.auth.currentUser;
      final currentSession = _supabaseClient.auth.currentSession;
      if (currentUser != null) {
        return UserModel.fromAuthResponse(
          authResponse: AuthResponse(
            user: currentUser,
            session: currentSession,
          ),
        );
      } else {
        throw ServerException(message: 'User is null');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
