import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/components/product/product_wrap.dart';

import 'package:elastico/app/core/components/section_title.dart';
import 'package:elastico/app/features/search/presentation/bloc/search_bloc.dart';
import 'package:elastico/app/features/search/presentation/widgets/search_appbar.dart';
import 'package:elastico/app/features/search/presentation/widgets/search_not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismissOnTap(
        dismissOnCapturedTaps: true,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SearchAppBar(),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) => state.maybeWhen(
                  loaded: (search, filters) => SectionTitle(
                    title: search.query.isNotEmpty
                        ? 'results_for'.tr(args: [search.query])
                        : 'all_products'.tr(),
                    trailingText: 'count_products'
                        .tr(args: [search.products.length.toString()]),
                  ),
                  orElse: () => const SliverToBoxAdapter(),
                ),
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) => state.maybeWhen(
                  loading: () => const SliverToBoxAdapter(
                    child: Center(child: LoadingIndicator()),
                  ),
                  loaded: (search, filters) => search.products.isNotEmpty
                      ? ProductWrap(
                          products: search.products,
                          isSliver: true,
                        )
                      : const SearchNotFound(),
                  error: (errorMessage) => SliverFillRemaining(
                    hasScrollBody: false,
                    child: ErrorText(
                      errorMessage: errorMessage,
                      onPressed: () => context.read<SearchBloc>().search(''),
                    ),
                  ),
                  orElse: () => const SliverToBoxAdapter(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
