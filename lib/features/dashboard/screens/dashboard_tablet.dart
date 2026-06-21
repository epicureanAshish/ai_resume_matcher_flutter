import 'package:ai_resume_matcher_flutter/features/dashboard/widgets/analysis_row.dart';
import 'package:flutter/material.dart';

class DashboardTablet extends StatelessWidget {
  const DashboardTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),

      body: Row(
        children: [

          /// Sidebar
          Container(
            width: 240,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
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
                  leading: Icon(Icons.smart_toy,
                      color: Colors.white),
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
          ),

          /// Main Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [

                  /// Header
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [
                          const Text("Welcome, Arjun 👋"),
                          const SizedBox(width: 12),
                          CircleAvatar(
                            backgroundColor:
                            Colors.blue.shade100,
                            child: const Icon(Icons.person),
                          )
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 24),

                  /// KPI Cards
                  Row(
                    children: [
                      Expanded(
                        child: _statCard(
                          "124",
                          "Total Analyses",
                          Icons.bar_chart,
                        ),
                      ),
                      const SizedBox(width: 16),

                      Expanded(
                        child: _statCard(
                          "76%",
                          "Average Match Score",
                          Icons.pie_chart_outline,
                        ),
                      ),
                      const SizedBox(width: 16),

                      Expanded(
                        child: _statCard(
                          "12",
                          "Resumes Uploaded",
                          Icons.description,
                        ),
                      ),
                      const SizedBox(width: 16),

                      Expanded(
                        child: _statCard(
                          "18",
                          "Jobs Analyzed",
                          Icons.work_outline,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  /// Analysis List
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Recent Analyses",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight:
                                  FontWeight.w600,
                                ),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          Expanded(
                            child: ListView(
                              children: const [
                                AnalysisRow(
                                  title:
                                  "Senior Flutter Developer",
                                  score: "82%",
                                  color: Colors.green,
                                ),
                                AnalysisRow(
                                  title:
                                  "Backend Python Developer",
                                  score: "71%",
                                  color: Colors.orange,
                                ),
                                AnalysisRow(
                                  title:
                                  "Full Stack Developer",
                                  score: "65%",
                                  color: Colors.amber,
                                ),
                                AnalysisRow(
                                  title:
                                  "Mobile App Developer",
                                  score: "58%",
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
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


  Widget _statCard(
      String value,
      String title,
      IconData icon,
      ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                icon,
                color: const Color(0xff2563EB),
              ),
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const Text(
            "+12% from last month",
            style: TextStyle(
              color: Colors.green,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}