import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/extention/ui_extention.dart';
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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

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
  CartItem? cartItem;

  Future<void> _loadData() async {
    final bloc = context.read<ProductBloc>();
    final commentBloc = context.read<CommentBloc>();
    bloc.fetchProduct(widget.productId);
    commentBloc.fetchProductComments(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    return Scaffold(
      body: SafeArea(
        child: BlocListener<CartBloc, CartState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (message) => context.showToast(
                title: 'operation_failed'.tr(),
                description: message,
                type: ToastificationType.error,
              ),
              loaded: (cart) => context.showToast(
                title: 'operation_successfully'.tr(),
                description: 'add_to_cart_successfully'.tr(),
                type: ToastificationType.success,
              ),
            );
          },
          child: RefreshIndicator(
            onRefresh: () async => _loadData(),
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
                              padding: 18.w.horizontal + 18.h.top,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: context.theme.appTextTheme.title3,
                                  ),
                                  10.hb,
                                  const ProductReviewDetatil(),
                                  10.hb,
                                ],
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: 18.w.horizontal,
                              child: const Divider(),
                            ),
                          ),
                          if (product.description.isNotEmpty)
                            ProductDescription(
                                description: product.description),
                          ProductVariants(
                            variants: variants,
                            onVariantChanged: (selectedVariant) =>
                                cartItem = CartItem(
                              id: '${product.id}-${selectedVariant.items.first.id}',
                              product: product,
                              variant: selectedVariant,
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: 18.w.horizontal,
                              child: const Divider(),
                            ),
                          ),
                          ProductComments(productId: widget.productId),
                          SliverPadding(padding: 112.h.bottom),
                        ],
                      ),
                      Positioned(
                        left: 18,
                        right: 18,
                        bottom: 18,
                        child: ProductActionBar(
                          product: product,
                          onButtonPressed: () => variants.isNotEmpty
                              ? cartBloc.addToCart(cartItem!)
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
                    onPressed: () => _loadData(),
                  ),
                  orElse: () => const Center(child: LoadingIndicator()),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
