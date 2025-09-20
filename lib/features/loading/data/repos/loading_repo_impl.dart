import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/core/error_handling/server_exception.dart';
import 'package:e_commerce/core/services/shared_prefs_service.dart';
import 'package:e_commerce/core/shared/entities/user_entity.dart';
import 'package:e_commerce/features/loading/data/data_sources/loading_data_source.dart';
import 'package:e_commerce/features/loading/data/repos/loading_repo.dart';

class LoadingRepoImpl implements LoadingRepo {
  late final SharedPrefsService _sharedPrefsService;
  late final LoadingDataSource _loadingDataSource;

  LoadingRepoImpl({
    required SharedPrefsService sharedPrefsService,
    required LoadingDataSource loadingDataSource,
  }) : _sharedPrefsService = sharedPrefsService,
       _loadingDataSource = loadingDataSource;

  @override
  bool get isOnboardingFinished => _sharedPrefsService.isOnboardingFinished;

  @override
  Either<Failure, UserEntity> getUser() {
    try {
      final userEntity = _loadingDataSource.getUser();
      return right(userEntity);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
