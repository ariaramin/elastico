import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String avatar,
    required String name,
    required String username,
    required bool verified,
  }) = _User;
}
