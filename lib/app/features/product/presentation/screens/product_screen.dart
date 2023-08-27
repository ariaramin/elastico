import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/presentation/bloc/product/product_bloc.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_action_bar.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_appbar.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_description.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_image_slider.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_review_detail.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  final String productId;

  const ProductScreen({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<ProductBloc>(context)
              .add(FetchProduct(productId: productId));
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoaded) {
              return Stack(
                fit: StackFit.expand,
                alignment: AlignmentDirectional.center,
                children: [
                  CustomScrollView(
                    slivers: [
                      const ProductAppBar(),
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            ProductImageSlider(product: state.product),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 18,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.product.name,
                                        style:
                                            context.theme.appTextTheme.title3,
                                      ),
                                      const SizedBox(height: 10),
                                      const ProductReviewDetatil(),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 4, 0, 10),
                                    child: Divider(),
                                  ),
                                  ...state.variants.map((variant) {
                                    return ProductVariant(
                                      variant: variant,
                                      onVariantItemChanged:
                                          (selectedVariant) {},
                                    );
                                  }).toList(),
                                  if (state.product.description.isNotEmpty) ...{
                                    ProductDescription(
                                        description: state.product.description),
                                    const SizedBox(height: 14),
                                  },
                                  const SizedBox(height: 92)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 18,
                    right: 18,
                    bottom: 18,
                    child: ProductActionBar(product: state.product),
                  ),
                ],
              );
            }
            if (state is ProductError) {
              return ErrorText(errorMessage: state.errorMessage);
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
