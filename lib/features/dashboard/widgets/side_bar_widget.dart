import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff021B4E),
            Color(0xff00153F),
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 30),

          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.smart_toy,
                color: Color(0xff2563EB),
              ),
            ),
            title: Text(
              "AI Resume Matcher",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          _menu(Icons.home, "Dashboard", true),
          _menu(Icons.description, "Resumes", false),
          _menu(Icons.work_outline, "Jobs", false),
          _menu(Icons.analytics, "Analysis", false),
          _menu(Icons.person_outline, "Profile", false),

          const Spacer(),

          _menu(Icons.settings, "Settings", false),
          _menu(Icons.logout, "Logout", false),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _menu(
      IconData icon,
      String title,
      bool selected,
      ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xff2563EB)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: () {},
      ),
    );
  }

}