import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project/core/services/local_keys_service.dart';
import 'package:project/features/sign_up/data/models/sign_up_model.dart';
import 'package:project/core/errors/network_exceptions.dart';

abstract class BaseSignUpRemoteDataSource {
  Future<bool> getSignUp({
    required String fullName,
    required String email,
    required String password,

  });
}

@LazySingleton(as: BaseSignUpRemoteDataSource)
class SignUpRemoteDataSource implements BaseSignUpRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  SignUpRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<bool> getSignUp({
    required String fullName,
    required String email,
    required String password,
   
  }) async {
    try {
      final dataAuthUser = await _supabase.auth.signUp(
        password: password,
        email: email,
      );
      await _supabase.from('users').insert({
        'id': dataAuthUser.user!.id,
        'auth_id': dataAuthUser.user!.id,
        'full_name': fullName,
        'email': email,
      });
      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
