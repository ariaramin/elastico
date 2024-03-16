import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/custom_bottom_sheet.dart';
import 'package:elastico/app/core/components/textfield/app_textfield.dart';
import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddCommentBottomSheet extends StatefulWidget {
  final String? initialText;
  final double? initialRating;
  final Function(String text, double rating) onSavePressed;

  const AddCommentBottomSheet({
    super.key,
    this.initialText,
    this.initialRating,
    required this.onSavePressed,
  });

  @override
  State<AddCommentBottomSheet> createState() => _AddCommentBottomSheetState();
}

class _AddCommentBottomSheetState extends State<AddCommentBottomSheet> {
  late TextEditingController _textEditingController;
  double rating = 0;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.text = widget.initialText ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'leave_comment'.tr(),
      content: Column(
        children: [
          Text('your_rating_about_product'.tr()),
          8.hb,
          RatingBar.builder(
            initialRating: widget.initialRating ?? 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.zero,
            itemBuilder: (context, _) => const Icon(
              AppIcons.iconly_regular_bold_star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) => this.rating = rating,
          ),
          16.hb,
          AppTextField(
            controller: _textEditingController,
            hint: 'your_comment_about_product'.tr(),
            prefixIcon: AppIcons.iconly_regular_outline_chat,
          ),
        ],
      ),
      saveText: 'leave'.tr(),
      onSavePressed: () => widget.onSavePressed(
        _textEditingController.text.trim(),
        rating,
      ),
    );
  }
}
