import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductReviewDetatil extends StatelessWidget {
  const ProductReviewDetatil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentBloc, CommentState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (comments) => Row(
            children: [
              RatingBar.builder(
                initialRating: comments.isNotEmpty
                    ? comments.fold(
                            0.0,
                            (previousValue, element) =>
                                previousValue + element.rating) /
                        comments.length
                    : 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 18.w,
                itemPadding: EdgeInsets.zero,
                itemBuilder: (context, _) => const Icon(
                  AppIcons.iconly_regular_bold_star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double value) {},
              ),
              4.wb,
              Text(
                comments.isNotEmpty
                    ? '${comments.fold(0.0, (previousValue, element) => previousValue + element.rating) / comments.length}'
                    : '0',
                style: context.theme.appTextTheme.tiny,
              ),
              4.wb,
              Text(
                '(${comments.length} ${'comment'.tr()})',
                style: context.theme.appTextTheme.tiny.copyWith(
                  color: AppPalette.light.light40,
                ),
              ),
            ],
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
