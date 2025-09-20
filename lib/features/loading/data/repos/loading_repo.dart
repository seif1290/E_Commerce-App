import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/core/shared/entities/user_entity.dart';

abstract interface class LoadingRepo {
  bool get isOnboardingFinished;

  Either<Failure, UserEntity> getUser();
}
