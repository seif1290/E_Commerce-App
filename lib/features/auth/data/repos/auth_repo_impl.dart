import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/features/auth/data/data_sources/auth_data_source.dart';
import 'package:e_commerce/features/auth/data/models/login_model.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/core/shared/entities/user_entity.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  late final SupabaseAuthDataSource _authDataSource;

  AuthRepoImpl({required SupabaseAuthDataSource authDataSource})
    : _authDataSource = authDataSource;

  @override
  Future<Either<Failure, UserEntity>> register({
    required RegisterModel registerModel,
  }) async {
    try {
      final userEntity = await _authDataSource.register(
        registerModel: registerModel,
      );
      return right(userEntity);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> login({
    required LoginModel loginModel,
  }) async {
    try {
      final userEntity = await _authDataSource.login(loginModel: loginModel);
      return right(userEntity);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
