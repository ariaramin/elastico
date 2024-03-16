import 'package:elastico/app/core/extention/num_extention.dart';
import 'package:elastico/app/features/auth/domain/entities/settings_item.dart';
import 'package:elastico/app/features/auth/presentation/widgets/avatar.dart';
import 'package:elastico/app/features/auth/presentation/widgets/settings_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: 18.w.horizontal,
            child: Column(
              children: [
                56.hb,
                const Avatar(),
                12.hb,
                const Divider(),
                ...List.generate(
                  settings.length,
                  (index) => SettingsTile(
                    item: settings[index],
                    onItemTap: settings[index].destination != null
                        ? () => context.push(settings[index].destination!)
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
