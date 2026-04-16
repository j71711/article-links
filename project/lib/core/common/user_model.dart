import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project/core/common/user_entity.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
abstract class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: .snake)
  const factory UserModel({
    required String id,
    required String fullName,
  required String email,

  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      fullName: fullName,
    email: email,
    );
  }
}
