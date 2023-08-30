import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/error_text.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/comment/presentation/bloc/comment_bloc.dart';
import 'package:elastico/app/features/comment/presentation/widgets/comment_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductComments extends StatelessWidget {
  const ProductComments({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
        child: BlocBuilder<CommentBloc, CommentState>(
          builder: (context, state) {
            if (state is CommentLoaded) {
              return Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'user_comments'.tr(),
                        style: context.theme.appTextTheme.regular2,
                      ),
                      if (state.comments.length > 3) ...{
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
                    child: state.comments.isNotEmpty
                        ? ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemCount: state.comments.length,
                            itemBuilder: (context, index) {
                              return CommentItem(
                                  comment: state.comments[index]);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 14),
                          )
                        : Text(
                            'هیچ نظری درباره این محصول ثبت نشده است.',
                            style: context.theme.appTextTheme.regular3,
                          ),
                  ),
                ],
              );
            }
            if (state is CommentError) {
              return ErrorText(errorMessage: state.errorMessage);
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
