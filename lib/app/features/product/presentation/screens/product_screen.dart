import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
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
    final bloc = context.read<ProductBloc>();
    final commentBloc = context.read<CommentBloc>();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          bloc.fetchProduct(productId);
          commentBloc.fetchProductComments(productId);
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (product, variants) => Stack(
                fit: StackFit.expand,
                alignment: AlignmentDirectional.center,
                children: [
                  CustomScrollView(
                    slivers: [
                      ProductAppBar(product: product),
                      ProductImageSlider(product: product),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
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
                      if (product.description.isNotEmpty)
                        ProductDescription(description: product.description),
                      ProductVariants(variants: variants),
                      const SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: Divider(),
                        ),
                      ),
                      ProductComments(productId: productId),
                      const SliverPadding(
                          padding: EdgeInsets.only(bottom: 102)),
                    ],
                  ),
                  Positioned(
                    left: 18,
                    right: 18,
                    bottom: 18,
                    child: ProductActionBar(product: product),
                  ),
                ],
              ),
              error: (errorMessage) => ErrorText(
                errorMessage: errorMessage,
                onPressed: () => bloc.fetchProduct(productId),
              ),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
