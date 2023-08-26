import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final String id;
  final String thumbnail;

  const Banner({
    required this.id,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [id, thumbnail];
}
