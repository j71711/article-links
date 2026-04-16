import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/network_exceptions.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/sign_in/data/datasources/sign_in_remote_data_source.dart';
import 'package:project/features/sign_in/domain/repositories/sign_in_repository_domain.dart';

@LazySingleton(as: SignInRepositoryDomain)
class SignInRepositoryData implements SignInRepositoryDomain {
  final BaseSignInRemoteDataSource remoteDataSource;

  SignInRepositoryData(this.remoteDataSource);

  @override
  Future<Result<bool, Failure>> getSignIn({
    required String email,
    required String password,
  }) async {
    try {
      await remoteDataSource.getSignIn(
        email: email,
        password: password,
      );
      return Success(true);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
