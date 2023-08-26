abstract class ProductParams {
  final String filterSequence;

  ProductParams({required this.filterSequence});
}

class DiscountedProductsParams extends ProductParams {
  DiscountedProductsParams() : super(filterSequence: "popularity='discounted'");
}

class BestSellerProductsParams extends ProductParams {
  BestSellerProductsParams()
      : super(filterSequence: "popularity='best-seller'");
}
