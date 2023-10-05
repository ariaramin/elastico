import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/components/loading_indicator.dart';
import 'package:elastico/app/core/extention/responsive_extention.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/comment/presentation/widgets/comment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
        child: BlocBuilder<CommentBloc, CommentState>(
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
                    padding: const EdgeInsets.only(top: 18),
                    child: comments.isNotEmpty
                        ? GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: context.responsive<int>(
                                1,
                                sm: 2,
                                md: 2,
                              ),
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: context.responsive<double>(
                                1 / .28,
                                sm: 1 / .27,
                                md: 1 / .27,
                              ),
                            ),
                            itemCount: comments.length,
                            itemBuilder: (context, index) =>
                                CommentItem(comment: comments[index]),
                          )
                        : Text(
                            'هیچ نظری درباره این محصول ثبت نشده است.',
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
