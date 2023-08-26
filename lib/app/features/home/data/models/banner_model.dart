import 'package:elastico/app/core/utils/constants.dart';
import 'package:elastico/app/features/home/domain/entities/banner.dart';

class BannerModel extends Banner {
  const BannerModel({
    required String id,
    required String thumbnail,
  }) : super(id: id, thumbnail: thumbnail);

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      thumbnail:
          '${Constants.baseUrl}files/${json['collectionId']}/${json['id']}/${json['thumbnail']}',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'thumbnail': thumbnail,
    };
  }
}
