import 'package:equatable/equatable.dart';
import 'package:project/features/home/domain/entities/link_entity.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}
class HomeLoadedState extends HomeState {}
class HomeSuccessState extends HomeState {
    final List<LinkEntity> links;

  const HomeSuccessState({required this.links});
}

class HomeErrorState extends HomeState {
  final String message;
  const HomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

