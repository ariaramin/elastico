import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/cart/domain/entities/cart_item.dart';
import 'package:elastico/app/features/cart/presentation/bloc/cart_bloc.dart';
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

class ProductScreen extends StatefulWidget {
  final String productId;

  const ProductScreen({
    super.key,
    required this.productId,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductBloc>();
    final commentBloc = context.read<CommentBloc>();
    final cartBloc = context.read<CartBloc>();
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            bloc.fetchProduct(widget.productId);
            commentBloc.fetchProductComments(widget.productId);
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
                        ProductVariants(
                          variants: variants,
                          onVariantChanged: (selectedVariant) =>
                              cartItem = CartItem(
                            id: '${product.id}-${selectedVariant.items.first.id}',
                            product: product,
                            variant: selectedVariant,
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 18),
                            child: Divider(),
                          ),
                        ),
                        ProductComments(productId: widget.productId),
                        const SliverPadding(
                            padding: EdgeInsets.only(bottom: 112)),
                      ],
                    ),
                    Positioned(
                      left: 18,
                      right: 18,
                      bottom: 18,
                      child: ProductActionBar(
                        product: product,
                        onButtonPressed: () => variants.isNotEmpty
                            ? cartBloc.addToCart(cartItem)
                            : cartBloc.addToCart(
                                CartItem(
                                  id: product.id,
                                  product: product,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
                error: (errorMessage) => ErrorText(
                  errorMessage: errorMessage,
                  onPressed: () => bloc.fetchProduct(widget.productId),
                ),
                orElse: () => const Center(child: LoadingIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
