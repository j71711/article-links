import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/sign_up/domain/entities/sign_up_entity.dart';
import 'package:project/features/sign_up/domain/repositories/sign_up_repository_domain.dart';

@lazySingleton
class SignUpUseCase {
  final SignUpRepositoryDomain _repositoryData;

  SignUpUseCase(this._repositoryData);

  Future<Result<bool, Failure>> getSignUp({
    required String fullName,
    required String email,
    required String password,
 
  }) async {
    return _repositoryData.getSignUp(
      fullName: fullName,
      email: email,
      password: password,
  
    );
  }
}
