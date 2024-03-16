import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/core/extention/ui_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/comment/presentation/widgets/comment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class ProductComments extends StatelessWidget {
  final String productId;

  const ProductComments({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CommentBloc>();
    return SliverToBoxAdapter(
      child: Padding(
        padding: 18.w.horizontal + 10.h.top,
        child: BlocConsumer<CommentBloc, CommentState>(
          listener: (context, state) {
            state.whenOrNull(
              failed: (actionType, errorMessage) => context.showToast(
                title: 'operation_failed'.tr(),
                description: errorMessage,
                type: ToastificationType.error,
              ),
              success: (actionType) {
                switch (actionType) {
                  case ActionType.add:
                    context.pop();
                    context.showToast(
                      title: 'comment_added_successfully'.tr(),
                      description:
                          'comment_will_be_displayed_after_approval'.tr(),
                      type: ToastificationType.success,
                    );
                    break;
                  case ActionType.update:
                    context.pop();
                    context.showToast(
                      title: 'comment_updated_successfully'.tr(),
                      description:
                          'comment_will_be_displayed_after_approval'.tr(),
                      type: ToastificationType.success,
                    );
                    break;
                  default:
                    context.showToast(
                      title: 'comment_deleted_successfully'.tr(),
                      description: 'comment_deleted'.tr(),
                      type: ToastificationType.success,
                    );
                }
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (comments) => Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'user_comments'.tr(),
                        style: context.theme.appTextTheme.regular2,
                      ),
                      if (comments.length > 3) ...{
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'see_all'.tr(),
                            style: context.theme.appTextTheme.tiny.copyWith(
                              color: context.theme.appColors.primary,
                            ),
                          ),
                        ),
                      }
                    ],
                  ),
                  Padding(
                    padding: 18.h.top,
                    child: comments.isNotEmpty
                        ? Wrap(
                            spacing: 16.w,
                            runSpacing: 16.h,
                            children: comments
                                .map((comment) => CommentItem(comment: comment))
                                .toList(),
                          )
                        : Text(
                            'no_comments'.tr(),
                            style: context.theme.appTextTheme.regular3,
                          ),
                  ),
                ],
              ),
              error: (errorMessage) => ErrorText(
                errorMessage: errorMessage,
                onPressed: () => bloc.fetchProductComments(productId),
              ),
              orElse: () => const Center(child: LoadingIndicator()),
            );
          },
        ),
      ),
    );
  }
}
