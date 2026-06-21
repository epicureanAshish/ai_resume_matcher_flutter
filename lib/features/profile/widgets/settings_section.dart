import 'package:ai_resume_matcher_flutter/features/profile/widgets/utils.dart';
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return sectionCard(
      title: "Settings",
      children: const [
        SettingTile(
          icon: Icons.notifications_none,
          title: "Notifications",
        ),
        SettingTile(
          icon: Icons.lock_outline,
          title: "Privacy & Security",
        ),
        SettingTile(
          icon: Icons.help_outline,
          title: "Help & Support",
        ),
        SettingTile(
          icon: Icons.info_outline,
          title: "About",
        ),
      ],
    );
  }
}