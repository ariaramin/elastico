import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';

@freezed
class Option with _$Option {
  factory Option({
    required String title,
    required dynamic value,
  }) = _Option;
}
