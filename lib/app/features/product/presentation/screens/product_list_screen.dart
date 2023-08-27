import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/product_item.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
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
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 8,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: context.responsive<int>(
                    2,
                    sm: 4,
                    md: 4,
                  ),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: context.responsive<double>(
                    1 / 1.55,
                    sm: 1 / 1.58,
                    md: 1 / 1.58,
                  ),
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) =>
                    ProductItem(product: state.products[index]),
              ),
            );
          }
          if (state is ProductListError) {
            return Center(child: Text(state.errorMessage));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
