import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/sign_in/domain/use_cases/sign_in_use_case.dart';
import 'package:project/features/sign_in/presentation/cubit/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final SignInUseCase _signInUseCase;

  SignInCubit(this._signInUseCase) : super(SignInInitialState());

  Future<void> getSignInMethod({
    required String email,
    required String password,
  }) async {
    final result = await _signInUseCase.getSignIn(
      email: email,
      password: password,
    );
    result.when(
      (success) {
        print("------1");
        emit(SignInSuccessState());
        
      },
      (whenError) {
                print("------2");
      emit(SignInErrorState(message:whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
