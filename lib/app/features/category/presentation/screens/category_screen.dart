import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/custom_appbar.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/features/category/presentation/bloc/bloc/category_bloc.dart';
import 'package:elastico/app/features/category/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CategoryBloc>();
    return Scaffold(
      appBar: CustomAppBar(title: 'categories'.tr()),
      body: RefreshIndicator(
        onRefresh: () async => bloc.fetchCategory(),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (categories) => Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
              child: ListView.separated(
                itemCount: categories.length,
                itemBuilder: (context, index) => CategoryCard(
                  category: categories[index],
                  index: index,
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 18),
              ),
            ),
            error: (errorMessage) => ErrorText(
              errorMessage: errorMessage,
              onPressed: () => bloc.fetchCategory(),
            ),
            orElse: () => const Center(child: LoadingIndicator()),
          ),
        ),
      ),
    );
  }
}
