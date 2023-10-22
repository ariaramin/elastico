import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elastico/app/config/theme/colors/app_palette.dart';
import 'package:elastico/app/core/components/app_icons.dart';
import 'package:elastico/app/core/components/bottom_sheet/entity/option.dart';
import 'package:elastico/app/core/components/bottom_sheet/selectable_bottom_sheet.dart';
import 'package:elastico/app/core/extention/theme_extention.dart';
import 'package:elastico/app/features/auth/presentation/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatefulWidget {
  const Avatar({
    super.key,
  });

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  useRootNavigator: true,
                  builder: (context) => SelectableBottomSheet(
                    options: [
                      Option(title: 'گالری', value: ImageSource.gallery),
                      Option(title: 'دوربین', value: ImageSource.camera),
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
                        : CachedNetworkImageProvider(state.user.avatar!),
                    radius: 48,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: context.theme.appColors.primary,
                      ),
                      child: const Icon(
                        AppIcons.iconly_regular_bold_edit,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              state.user.name!,
              style: context.theme.appTextTheme.title3,
            ),
            const SizedBox(height: 8),
            Text(
              state.user.email!,
              style: context.theme.appTextTheme.tiny.copyWith(
                color: AppPalette.light.light20,
              ),
            ),
          ],
        );
      },
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
