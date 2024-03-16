import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:elastico/app/features/auth/data/models/user_model.dart';
import 'package:pocketbase/pocketbase.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();

  const factory CommentModel({
    required String id,
    @JsonKey(name: 'expand', fromJson: _convertUser) required UserModel user,
    required String product,
    required String text,
    required double rating,
    required bool isPublished,
    required String created,
  }) = _CommentModel;

  factory CommentModel.fromRecord(RecordModel record) =>
      CommentModel.fromJson(record.toJson());

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Comment toEntity() => Comment(
        id: id,
        user: user.toEntity(),
        product: product,
        text: text,
        rating: rating / 1,
        isPublished: isPublished,
        created: DateTime.parse(created),
      );
}

UserModel _convertUser(Map<String, dynamic> json) =>
    UserModel.fromJson(json['user']);
