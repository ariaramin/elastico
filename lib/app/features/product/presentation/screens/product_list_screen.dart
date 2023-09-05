import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/error_text.dart';
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
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          if (state is ProductListLoaded) {
            return ProductGrid(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              products: state.products,
            );
          }
          if (state is ProductListError) {
            return ErrorText(
              errorMessage: state.errorMessage,
              onPressed: () => context
                  .read<ProductListBloc>()
                  .add(FetchProducts(filterSequence: filter)),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
