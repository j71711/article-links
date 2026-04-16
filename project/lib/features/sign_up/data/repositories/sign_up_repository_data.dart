
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/network_exceptions.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/sign_up/domain/entities/sign_up_entity.dart';

import 'package:project/features/sign_up/data/datasources/sign_up_remote_data_source.dart';
import 'package:project/features/sign_up/data/models/sign_up_model.dart';
import 'package:project/features/sign_up/domain/repositories/sign_up_repository_domain.dart';

@LazySingleton(as: SignUpRepositoryDomain)
class SignUpRepositoryData implements SignUpRepositoryDomain{
  final BaseSignUpRemoteDataSource remoteDataSource;


  SignUpRepositoryData(this.remoteDataSource);

@override
  Future<Result<bool, Failure>> getSignUp({required String fullName,required String email,required String password}) async {
    try {
      final response = await remoteDataSource.getSignUp(fullName: fullName, email: email, password:password );
      return Success(true);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
