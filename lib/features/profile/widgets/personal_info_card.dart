import 'package:ai_resume_matcher_flutter/features/profile/widgets/utils.dart';
import 'package:flutter/material.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return sectionCard(
      title: "Personal Information",
      children: const [
        InfoTile(
          icon: Icons.email_outlined,
          title: "Email",
          value: "arjun@gmail.com",
        ),
        InfoTile(
          icon: Icons.phone_outlined,
          title: "Phone",
          value: "+91 9876543210",
        ),
        InfoTile(
          icon: Icons.location_on_outlined,
          title: "Location",
          value: "Bangalore, India",
        ),
      ],
    );
  }
}