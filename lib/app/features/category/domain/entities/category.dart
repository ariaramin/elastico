import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String thumbnail;
  final String icon;
  final String title;

  const Category({
    required this.id,
    required this.thumbnail,
    required this.icon,
    required this.title,
  });

  @override
  List<Object?> get props => [id, thumbnail, icon, title];
}
