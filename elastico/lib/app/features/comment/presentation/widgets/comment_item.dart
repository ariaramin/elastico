import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_button.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/comment/presentation/widgets/add_comment_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:readmore/readmore.dart';

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem({
    super.key,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    final appState = context.read<AppBloc>().state;
    return ShadowContainer(
      padding: 14.w.horizontal + 12.h.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(comment.user.avatar!),
                radius: 22.r,
              ),
              12.wb,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user.name!,
                    style: context.theme.appTextTheme.regular3.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  2.hb,
                  Text(
                    comment.created.toPersianDateStr(monthString: ''),
                    style: context.theme.appTextTheme.tiny.copyWith(
                      color: AppPalette.light.light40,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              RatingBar.builder(
                initialRating: comment.rating.toDouble(),
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
            ],
          ),
          12.hb,
          ReadMoreText(
            comment.text,
            trimLines: 3,
            colorClickableText: context.theme.appColors.onBackground,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'see_more'.tr(),
            trimExpandedText: 'see_less'.tr(),
            style: context.theme.appTextTheme.small,
          ),
          if (appState.user.id == comment.user.id) ...{
            12.hb,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppButton(
                  height: 42.h,
                  text: 'edit'.tr(),
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (modalContext) => AddCommentBottomSheet(
                      initialText: comment.text,
                      initialRating: comment.rating,
                      onSavePressed: (text, rating) {
                        if (text.isEmpty) return;
                        context.read<CommentBloc>().updateUserComment(
                              comment: comment,
                              text: text,
                              rating: rating,
                            );
                      },
                    ),
                  ),
                ),
                12.wb,
                AppButton(
                  height: 42.h,
                  text: 'delete'.tr(),
                  isPrimary: false,
                  onPressed: () =>
                      context.read<CommentBloc>().deleteUserComment(comment),
                ),
              ],
            ),
          }
        ],
      ),
    );
  }
}
