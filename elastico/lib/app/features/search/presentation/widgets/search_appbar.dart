import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/custom_bottom_sheet.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/search/domain/entities/filter_item.dart';
import 'package:elastico/app/features/search/presentation/bloc/search_bloc.dart';
import 'package:elastico/app/features/search/presentation/widgets/filter_variant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late TextEditingController _searchEditingController;
  final List<FilterItem> _filterItems = [];
  String? _sortSequence;

  @override
  void initState() {
    super.initState();
    _searchEditingController = TextEditingController();
    _searchEditingController.addListener(_onSearchTextChanged);
  }

  void _onSearchTextChanged() {
    final query = _searchEditingController.text.trim();
    context.read<SearchBloc>().search(query);
  }

  void _onItemSelected(FilterItem filterItem) {
    if (filterItem.sortSequence != null &&
        filterItem.sortSequence!.isNotEmpty) {
      _sortSequence = filterItem.sortSequence;
    } else {
      bool itemRemoved = false;
      _filterItems.removeWhere((element) {
        if (element == filterItem) {
          itemRemoved = true;
          return true;
        }
        return false;
      });

      if (!itemRemoved) {
        final existTypeIndex = _filterItems
            .indexWhere((element) => element.type == filterItem.type);
        if (existTypeIndex != -1) {
          _filterItems[existTypeIndex] = filterItem;
        } else {
          _filterItems.add(filterItem);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: false,
      toolbarHeight: kToolbarHeight + 18,
      backgroundColor: context.theme.appColors.background,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 2,
      elevation: 0,
      title: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          return AppTextField(
            controller: _searchEditingController,
            hint: 'search'.tr(),
            prefixIcon: AppIcons.iconly_regular_outline_search,
            suffixIcon: AppIcons.iconly_regular_outline_filter,
            suffixIconColor: context.theme.appColors.onBackground,
            autofocus: true,
            onSuffixIconTap: () => showModalBottomSheet(
              context: context,
              builder: (modalContext) => CustomBottomSheet(
                title: 'فیلتر و مرتب سازی',
                cancelText: 'حذف فیلتر',
                saveText: 'اعمال فیلتر',
                onSavePressed: () => context.read<SearchBloc>().search(
                      _searchEditingController.text.trim(),
                      filters: _filterItems,
                      sort: _sortSequence,
                    ),
                onCancelPressed: () {
                  _filterItems.clear();
                  _sortSequence = null;
                  context
                      .read<SearchBloc>()
                      .search(_searchEditingController.text.trim());
                  context.pop();
                },
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...state.whenOrNull(
                      loaded: (search, filters) => List.generate(
                        filters.length,
                        (index) => FilterVariant(
                          filter: filters[index],
                          initialItem: filters[index].items.firstWhere(
                                (element) =>
                                    _filterItems.contains(element) ||
                                    element.sortSequence == _sortSequence,
                                orElse: () =>
                                    const FilterItem(title: '', type: ''),
                              ),
                          onItemSelected: _onItemSelected,
                        ),
                      ),
                    )!,
                    double.infinity.wb,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
