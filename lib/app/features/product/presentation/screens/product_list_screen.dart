import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/components/product_grid.dart';
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
      body: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (products) => ProductGrid(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              products: products,
            ),
            error: (errorMessage) => ErrorText(
              errorMessage: errorMessage,
              onPressed: () => bloc.fetchProducts(filter),
            ),
            orElse: () => const Center(child: LoadingIndicator()),
          );
        },
      ),
    );
  }
}
