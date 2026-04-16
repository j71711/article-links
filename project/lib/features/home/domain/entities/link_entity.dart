
import 'package:equatable/equatable.dart';

class LinkEntity extends Equatable {
  final int id;
  final String title;
  final String url;

  const LinkEntity({
    required this.id,
    required this.title,
    required this.url,
  });

  @override
  List<Object?> get props => [url, title, id];
}
