import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String collectionId,
    required String id,
    required String avatar,
    required String name,
    required String username,
    required bool verified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        id: id,
        avatar: '${Constants.baseUrl}files/$collectionId/$id/$avatar',
        name: name,
        username: username,
        verified: verified,
      );
}
