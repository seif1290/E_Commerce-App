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
  });

  factory UserModel.fromAuthResponseUser({required User user}) {
    return UserModel(
      uid: user.id,
      email: user.email!,
      firstName: user.userMetadata![AppKeys.firstName],
      lastName: user.userMetadata![AppKeys.lastName],
      userName: user.userMetadata![AppKeys.userName],
    );
  }
}
