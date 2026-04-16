import 'package:injectable/injectable.dart';
import 'package:project/core/common/user_model.dart';
import 'package:project/core/services/user_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:project/core/errors/network_exceptions.dart';

abstract class BaseSignInRemoteDataSource {
  Future<bool> getSignIn({required String email, required String password});
}

@LazySingleton(as: BaseSignInRemoteDataSource)
class SignInRemoteDataSource implements BaseSignInRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService _userService;

  SignInRemoteDataSource(this._supabase, this._userService);

  @override
  Future<bool> getSignIn({
    required String email,
    required String password,
  }) async {
    try {
      final currentUser = await _supabase.auth.signInWithPassword(
        password: password,
        email: email,
      );

      final userData = await _supabase
          .from("users")
          .select()
          .eq("id", currentUser.user!.id)
          .single();
      final user = UserModel.fromJson(userData);
      _userService.setUser = user;

      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
