import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/features/add_link/domain/use_cases/add_link_use_case.dart';
import 'package:project/features/add_link/presentation/cubit/add_link_state.dart';

class AddLinkCubit extends Cubit<AddLinkState> {
  final AddLinkUseCase _addLinkUseCase;

  AddLinkCubit(this._addLinkUseCase) : super(AddLinkInitialState());

  Future<void> getAddLinkMethod({
    required String url,
    required String title,
  }) async {
    final result = await _addLinkUseCase.getAddLink(url: url, title: title);
    result.when(
      (success) {
        emit(AddLinkSuccessState());
      },
      (whenError) {
          emit(AddLinkErrorState(message: whenError.message ));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
