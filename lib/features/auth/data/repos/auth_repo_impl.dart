import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/features/auth/data/data_sources/auth_data_source.dart';
import 'package:e_commerce/features/auth/data/models/register_model.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  late final SupabaseAuthDataSource _authDataSource;

  AuthRepoImpl({required SupabaseAuthDataSource authDataSource})
    : _authDataSource = authDataSource;

  @override
  Future<Either<Failure, String>> register({
    required RegisterModel registerModel,
  }) async {
    try {
      final userId = await _authDataSource.register(
        registerModel: registerModel,
      );
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
