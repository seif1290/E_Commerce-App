import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/core/shared/entities/user_entity.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, UserEntity>> register({
    required RegisterModel registerModel,
  });
}
