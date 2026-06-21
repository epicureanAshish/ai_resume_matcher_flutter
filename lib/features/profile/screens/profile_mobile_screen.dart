import 'package:ai_resume_matcher_flutter/features/profile/widgets/logout_button.dart';
import 'package:ai_resume_matcher_flutter/features/profile/widgets/personal_info_card.dart';
import 'package:ai_resume_matcher_flutter/features/profile/widgets/profile_header.dart';
import 'package:ai_resume_matcher_flutter/features/profile/widgets/settings_section.dart';
import 'package:ai_resume_matcher_flutter/features/profile/widgets/skills_card.dart';
import 'package:ai_resume_matcher_flutter/features/profile/widgets/subscription_card.dart';
import 'package:flutter/material.dart';

class ProfileMobileScreen extends StatelessWidget {
  const ProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FC),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            ProfileHeader(),

            SizedBox(height: 16),

            PersonalInfoCard(),

            SizedBox(height: 16),

            SkillsCard(),

            SizedBox(height: 16),

            SubscriptionCard(),

            SizedBox(height: 16),

            SettingsSection(),

            SizedBox(height: 20),

            LogoutButton(),
          ],
        ),
      ),

    );
  }
}