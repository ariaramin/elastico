import 'package:elastico/app/core/constants/constants.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const BannerModel._();

  const factory BannerModel({
    required String collectionId,
    required String id,
    required String thumbnail,
  }) = _BannerModel;

  factory BannerModel.fromRecord(RecordModel record) =>
      BannerModel.fromJson(record.toJson());

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Banner toEntity() => Banner(
        id: id,
        thumbnail: '${Constants.baseUrl}api/files/$collectionId/$id/$thumbnail',
      );
}
