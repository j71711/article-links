import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/sign_in/domain/repositories/sign_in_repository_domain.dart';


@lazySingleton
class SignInUseCase {
  final SignInRepositoryDomain _repositoryData;

  SignInUseCase(this._repositoryData);

   Future<Result<bool, Failure>> getSignIn({
    required String email,
    required String password,
  }) async {
    return _repositoryData.getSignIn(email: email, password: password );
  }
}
