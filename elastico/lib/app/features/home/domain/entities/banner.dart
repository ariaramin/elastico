import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

@freezed
class Banner with _$Banner {
  const factory Banner({
    required String id,
    required String thumbnail,
  }) = _Banner;
}
