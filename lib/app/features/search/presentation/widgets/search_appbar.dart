import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/search/presentation/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late TextEditingController _searchEditingController;

  @override
  void initState() {
    super.initState();
    _searchEditingController = TextEditingController();
    _searchEditingController.addListener(() {
      final query = _searchEditingController.text.trim();
      context.read<SearchBloc>().search(query);
    });
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
      title: AppTextField(
        controller: _searchEditingController,
        hint: 'search'.tr(),
        prefixIcon: AppIcons.iconly_regular_outline_search,
        suffixIcon: AppIcons.iconly_regular_outline_filter,
        suffixIconColor: context.theme.appColors.onBackground,
        autofocus: true,
        onSuffixIconTap: () {},
      ),
    );
  }
}
