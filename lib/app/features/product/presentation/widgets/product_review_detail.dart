import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons_icons.dart';
import 'package:elastico/app/core/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductReviewDetatil extends StatelessWidget {
  const ProductReviewDetatil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      builder: (context, state) {
        if (state is CommentLoaded) {
          return Row(
            children: [
              const Icon(
                AppIcons.iconly_regular_bold_star,
                color: Colors.amber,
                size: 18,
              ),
              const SizedBox(width: 4),
              Text(
                state.comments.isNotEmpty
                    ? '${state.comments.fold(0.0, (previousValue, element) => previousValue + element.rating) / state.comments.length}'
                    : '0',
                style: context.theme.appTextTheme.tiny,
              ),
              const SizedBox(width: 4),
              Text(
                '(${state.comments.length} ${'comment'.tr()})',
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: AppPalette.light.light40,
                ),
              ),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
