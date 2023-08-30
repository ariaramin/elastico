import 'package:elastico/app/features/auth/domain/entities/user.dart';

class Comment {
  final String id;
  final User user;
  final String product;
  final String text;
  final double rating;
  final bool isPublished;
  final DateTime created;

  Comment({
    required this.id,
    required this.user,
    required this.product,
    required this.text,
    required this.rating,
    required this.isPublished,
    required this.created,
  });
}
