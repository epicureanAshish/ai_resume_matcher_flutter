import 'package:ai_resume_matcher_flutter/features/analysis/screens/analysis_mobile_screen.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/controller/dashboard_controller.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/state/dashboard_state.dart';
import 'package:ai_resume_matcher_flutter/features/jobs/screens/jobs_mobile_screen.dart';
import 'package:ai_resume_matcher_flutter/features/profile/screens/profile_mobile_screen.dart';
import 'package:ai_resume_matcher_flutter/features/resumes/screens/resume_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardMobile extends ConsumerWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard =
    ref.watch(
      dashboardControllerProvider,
    );
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FC),
      body: _currentTabView(dashboard),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          ref.read(dashboardControllerProvider.notifier).setSelectedTab(index);
        },
        currentIndex: dashboard.selectedTab,
        selectedItemColor: Color(0xff2563EB),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Resumes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: "Jobs",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: "Analysis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _currentTabView(DashboardState dashboard){
    switch(dashboard.selectedTab){
      case 0: return _body();
      case 1: return ResumeMobileScreen();
      case 2: return JobsMobileScreen();
      case 3: return AnalysisMobileScreen();
      case 4: return ProfileMobileScreen();
      default: return const SizedBox.shrink();
    }
  }

  Widget _body(){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none,
                    color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 12,
                top: 10,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Ashish 👋",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 20),

            /// Stats Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.25,
              children: const [
                DashboardCard(
                  title: "124",
                  subtitle: "Analyses",
                  percentage: "+12%",
                  icon: Icons.bar_chart,
                  iconColor: Colors.blue,
                ),
                DashboardCard(
                  title: "76%",
                  subtitle: "Avg Score",
                  percentage: "+8%",
                  icon: Icons.pie_chart_outline,
                  iconColor: Colors.green,
                ),
                DashboardCard(
                  title: "12",
                  subtitle: "Resumes",
                  percentage: "",
                  icon: Icons.description_outlined,
                  iconColor: Colors.blue,
                ),
                DashboardCard(
                  title: "18",
                  subtitle: "Jobs",
                  percentage: "",
                  icon: Icons.work_outline,
                  iconColor: Colors.blue,
                ),
              ],
            ),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Analyses",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("View all"),
                )
              ],
            ),

            const SizedBox(height: 8),

            AnalysisTile(
              title: "Senior Flutter Developer",
              fileName: "Resume_Arjun.pdf",
              score: "82%",
              scoreColor: Colors.green,
            ),

            AnalysisTile(
              title: "Backend Python Developer",
              fileName: "Arjun_Resume.pdf",
              score: "71%",
              scoreColor: Colors.orange,
            ),

            AnalysisTile(
              title: "Full Stack Developer",
              fileName: "Resume_2026.pdf",
              score: "65%",
              scoreColor: Colors.amber,
            ),

            AnalysisTile(
              title: "Mobile App Developer",
              fileName: "Arjun.pdf",
              score: "58%",
              scoreColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String percentage;
  final IconData icon;
  final Color iconColor;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.percentage,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                percentage,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                icon,
                color: iconColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AnalysisTile extends StatelessWidget {
  final String title;
  final String fileName;
  final String score;
  final Color scoreColor;

  const AnalysisTile({
    super.key,
    required this.title,
    required this.fileName,
    required this.score,
    required this.scoreColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.description_outlined,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  fileName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: scoreColor.withOpacity(.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              score,
              style: TextStyle(
                color: scoreColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}