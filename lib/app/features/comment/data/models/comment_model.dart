import 'package:elastico/app/features/auth/data/models/user_model.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';

class CommentModel extends Comment {
  CommentModel({
    required String id,
    required UserModel user,
    required String product,
    required String text,
    required double rating,
    required bool isPublished,
    required DateTime created,
  }) : super(
          id: id,
          user: user,
          product: product,
          text: text,
          rating: rating,
          isPublished: isPublished,
          created: created,
        );

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      id: json['id'],
      text: json['text'],
      user: UserModel.fromJson(json['expand']['user']),
      product: json['product'],
      rating: json['rating'] / 1,
      isPublished: json['is_published'],
      created: DateTime.parse(json['created']),
    );
  }
}
