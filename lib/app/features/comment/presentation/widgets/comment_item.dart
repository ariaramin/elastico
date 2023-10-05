import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/shadow_container.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/domain/entities/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
    return ShadowContainer(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    CachedNetworkImageProvider(comment.user.avatar),
                radius: 22,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.user.name,
                    style: context.theme.appTextTheme.regular3.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
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
                itemSize: 18,
                itemPadding: EdgeInsets.zero,
                itemBuilder: (context, _) => const Icon(
                  AppIcons.iconly_regular_bold_star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double value) {},
              ),
            ],
          ),
          const SizedBox(height: 12),
          ReadMoreText(
            comment.text,
            trimLines: 3,
            colorClickableText: context.theme.appColors.onBackground,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'see_more'.tr(),
            trimExpandedText: 'see_less'.tr(),
            style: context.theme.appTextTheme.small,
          ),
        ],
      ),
    );
  }
}
