import 'package:elastico/app/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required User user,
    required String product,
    required String text,
    required double rating,
    required bool isPublished,
    required DateTime created,
  }) = _Comment;
}
