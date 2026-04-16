import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/failure.dart';
import 'package:project/features/sign_up/domain/entities/sign_up_entity.dart';

abstract class SignUpRepositoryDomain {
    Future<Result<bool, Failure>> getSignUp({required String fullName,required String email,required String password});
}
