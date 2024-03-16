import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

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
    String? email,
  }) = _UserModel;

  factory UserModel.fromRecord(RecordModel record) =>
      UserModel.fromJson(record.toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toEntity() => User(
        id: id,
        avatar: avatar.isEmpty
            ? 'https://img.myloview.com/stickers/default-avatar-profile-icon-vector-social-media-user-symbol-image-400-244492311.jpg'
            : '${Constants.baseUrl}api/files/$collectionId/$id/$avatar',
        name: name,
        email: email,
      );
}
