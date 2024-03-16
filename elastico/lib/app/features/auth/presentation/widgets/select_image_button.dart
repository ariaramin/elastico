import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/entity/option.dart';
import 'package:elastico/app/core/components/bottom_sheet/selectable_bottom_sheet.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class SelectImageButton extends StatefulWidget {
  const SelectImageButton({super.key, required this.avatarUrl});

  final String avatarUrl;

  @override
  State<SelectImageButton> createState() => _SelectImageButtonState();
}

class _SelectImageButtonState extends State<SelectImageButton> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          useRootNavigator: true,
          builder: (context) => SelectableBottomSheet(
            options: [
              Option(
                title: 'gallery'.tr(),
                value: ImageSource.gallery,
              ),
              Option(
                title: 'camera'.tr(),
                value: ImageSource.camera,
              ),
            ],
            onOptionSelected: (option) => _pickImage(option.value),
          ),
        );
      },
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: _selectedImage != null
                ? Image.file(_selectedImage!).image
                : CachedNetworkImageProvider(widget.avatarUrl),
            radius: 48.r,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(4.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: context.theme.appColors.primary,
              ),
              child: Icon(
                AppIcons.iconly_regular_bold_edit,
                size: 12.w,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }
}
