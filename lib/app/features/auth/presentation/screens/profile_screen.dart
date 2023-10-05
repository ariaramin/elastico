import 'package:elastico/app/features/auth/domain/entities/settings_item.dart';
import 'package:elastico/app/features/auth/presentation/widgets/avatar.dart';
import 'package:elastico/app/features/auth/presentation/widgets/settings_tile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const SizedBox(height: 56),
                const Avatar(),
                const SizedBox(height: 12),
                const Divider(),
                ...List.generate(
                  settings.length,
                  (index) => SettingsTile(item: settings[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
