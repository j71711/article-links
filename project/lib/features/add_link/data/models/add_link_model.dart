import 'package:project/features/add_link/domain/entities/add_link_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_link_model.freezed.dart';
part 'add_link_model.g.dart';

@freezed
abstract class AddLinkModel with _$AddLinkModel {
  const factory AddLinkModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _AddLinkModel;

  factory AddLinkModel.fromJson(Map<String, Object?> json) => _$AddLinkModelFromJson(json);
}



extension AddLinkModelMapper on AddLinkModel {
  AddLinkEntity toEntity() {
    return AddLinkEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
