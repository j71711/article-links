import 'package:equatable/equatable.dart';
import 'package:project/features/home/domain/entities/link_entity.dart';

class HomeEntity extends Equatable {
  final List<LinkEntity> links;

  const HomeEntity({required this.links});

  @override
  List<Object?> get props => [links];
}
