import 'package:e_commerce/core/utils/constants/data_constants/app_keys.dart';
import 'package:e_commerce/features/auth/domain/entities/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.email,
    required super.firstName,
    required super.lastName,
    required super.userName,
    required super.isEmailConfirmed,
  });

  factory UserModel.fromAuthResponse({required AuthResponse authResponse}) {
    return UserModel(
      uid: authResponse.user!.id,
      email: authResponse.user!.email!,
      firstName: authResponse.user!.userMetadata![AppKeys.firstName],
      lastName: authResponse.user!.userMetadata![AppKeys.lastName],
      userName: authResponse.user!.userMetadata![AppKeys.userName],
      isEmailConfirmed: authResponse.session != null,
    );
  }
}
