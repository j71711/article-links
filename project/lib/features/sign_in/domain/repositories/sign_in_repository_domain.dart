import 'package:multiple_result/multiple_result.dart';
import 'package:project/core/errors/failure.dart';


abstract class SignInRepositoryDomain {
    Future<Result<bool, Failure>> getSignIn({
    required String email,
    required String password,
  });
}
