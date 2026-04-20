import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/home/domain/use_cases/home_use_case.dart';
import 'package:project/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(HomeInitialState()) {
    getHomeMethod();
  }

  Future<void> getHomeMethod() async {
    final result = await _homeUseCase.getHome();
    emit(HomeLoadedState());
    result.when(
      (success) {
        emit(HomeSuccessState(links: success.links));
      },
      (whenError) {
        emit(HomeErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
