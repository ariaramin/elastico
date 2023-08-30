import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/product/presentation/bloc/product/product_bloc.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_action_bar.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_appbar.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_comments.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_description.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_image_slider.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_review_detail.dart';
import 'package:elastico/app/features/product/presentation/widgets/product_variants.dart';
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
                      ProductImageSlider(product: state.product),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.product.name,
                                style: context.theme.appTextTheme.title3,
                              ),
                              const SizedBox(height: 10),
                              const ProductReviewDetatil(),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Divider(),
                        ),
                      ),
                      if (state.product.description.isNotEmpty) ...{
                        ProductDescription(
                            description: state.product.description),
                      },
                      ProductVariants(variants: state.variants),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Divider(),
                        ),
                      ),
                      const ProductComments(),
                      const SliverPadding(
                          padding: EdgeInsets.only(bottom: 102)),
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
