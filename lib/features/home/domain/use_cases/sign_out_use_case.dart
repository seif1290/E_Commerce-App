import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error_handling/failure.dart';
import 'package:e_commerce/core/utils/use_case.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';

class SignOutUseCase implements UseCase<void, void> {
  late final AuthRepo _authRepo;

  SignOutUseCase({required AuthRepo authRepo}) {
    _authRepo = authRepo;
  }

  @override
  Future<Either<Failure, void>> call(_) async => await _authRepo.singOut();
}

class SignOutParams {}
