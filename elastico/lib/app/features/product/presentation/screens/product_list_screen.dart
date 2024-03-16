import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/components/product/product_wrap.dart';

import 'package:elastico/app/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListScreen extends StatelessWidget {
  final String title;
  final String filter;

  const ProductListScreen({
    super.key,
    required this.title,
    required this.filter,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductListBloc>();
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: RefreshIndicator(
        onRefresh: () async => bloc.fetchProducts(filter),
        child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (products) => products.isNotEmpty
                  ? ProductWrap(products: products)
                  : Center(child: Text('nothing_found'.tr())),
              error: (errorMessage) => ErrorText(
                errorMessage: errorMessage,
                onPressed: () => bloc.fetchProducts(filter),
              ),
              orElse: () => const Center(child: LoadingIndicator()),
            );
          },
        ),
      ),
    );
  }
}
