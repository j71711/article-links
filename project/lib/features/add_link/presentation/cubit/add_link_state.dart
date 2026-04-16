import 'package:equatable/equatable.dart';

abstract class AddLinkState extends Equatable {
  const AddLinkState();

  @override
  List<Object?> get props => [];
}

class AddLinkInitialState extends AddLinkState {}
class AddLinkSuccessState extends AddLinkState {}

class AddLinkErrorState extends AddLinkState {
  final String message;
  const AddLinkErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

