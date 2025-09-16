import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';

abstract interface class UseCase<SuccessType, params> {
  Future<Either<Failure, SuccessType>> call(params params);
}
