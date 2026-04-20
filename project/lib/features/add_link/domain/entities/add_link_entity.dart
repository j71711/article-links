import 'package:equatable/equatable.dart';

class AddLinkEntity extends Equatable {
  final int id;

  const AddLinkEntity({required this.id});

  @override
  List<Object?> get props => [id];
}
