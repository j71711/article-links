import 'package:project/features/home/domain/entities/home_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/features/home/domain/entities/link_entity.dart';
part 'link_model.freezed.dart';
part 'link_model.g.dart';

@freezed
abstract class LinkModel with _$LinkModel {
  @JsonSerializable(fieldRename: .snake)
  const factory LinkModel({
    required int id,
    required String title,
    required String url,
  }) = _LinkModel;

  factory LinkModel.fromJson(Map<String, Object?> json) =>
      _$LinkModelFromJson(json);
}

extension PostModelMapper on LinkModel {
  LinkEntity toEntity() {
    return LinkEntity(
      id: id,
      title: title,
      url: url,
  
    );
  }
}
