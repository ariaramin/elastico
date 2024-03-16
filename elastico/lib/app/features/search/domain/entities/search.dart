import 'package:elastico/app/features/product/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
class Search with _$Search {
  const factory Search({
    required String query,
    required List<Product> products,
  }) = _Search;
}
