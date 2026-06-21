import 'package:ai_resume_matcher_flutter/features/dashboard/widgets/dashboard_header.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/widgets/side_bar_widget.dart';
import 'package:flutter/material.dart';

class DashboardWeb extends StatelessWidget {
  DashboardWeb({super.key});

  late final List<Widget> dashboardCards = [
    _statCard(
      "124",
      "Total Analyses",
      Icons.bar_chart,
    ),
    _statCard(
      "76%",
      "Average Match Score",
      Icons.pie_chart_outline,
    ),
    _statCard(
      "12",
      "Resumes Uploaded",
      Icons.description,
    ),
    _statCard(
      "18",
      "Jobs Analyzed",
      Icons.work_outline,
    ),
  ];

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

  DataRow analysisDataRow(
      String jobTitle,
      String resumeName,
      String score,
      ) {
    Color scoreColor;

    final value =
        int.tryParse(score.replaceAll("%", "")) ?? 0;

    if (value >= 80) {
      scoreColor = Colors.green;
    } else if (value >= 65) {
      scoreColor = Colors.orange;
    } else {
      scoreColor = Colors.red;
    }

    return DataRow(
      cells: [
        DataCell(Text(jobTitle)),
        DataCell(Text(resumeName)),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: scoreColor.withOpacity(.15),
              borderRadius:
              BorderRadius.circular(20),
            ),
            child: Text(
              score,
              style: TextStyle(
                color: scoreColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const DataCell(
          Text("May 20, 2026"),
        ),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),

      body: Row(
        children: [

          /// Sidebar
          SizedBox(
            width: 260,
            child: SidebarWidget(),
          ),

          /// Main Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [

                  const DashboardHeader(),

                  const SizedBox(height: 32),

                  /// 4 KPI Cards
                  GridView.builder(
                    shrinkWrap: true,
                    physics:
                    const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (context, index) {
                      return dashboardCards[index];
                    },
                  ),

                  const SizedBox(height: 32),

                  /// Recent Analysis Table
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(20),
                    ),
                    child: DataTable(
                      columnSpacing: 80,
                      columns: const [
                        DataColumn(label: Text("Job")),
                        DataColumn(label: Text("Resume")),
                        DataColumn(label: Text("Score")),
                        DataColumn(label: Text("Date")),
                      ],
                      rows: [
                        analysisDataRow(
                          "Senior Flutter Developer",
                          "Resume_Arjun.pdf",
                          "82%",
                        ),
                        analysisDataRow(
                          "Backend Python Developer",
                          "Arjun_Resume.pdf",
                          "71%",
                        ),
                        analysisDataRow(
                          "Full Stack Developer",
                          "Resume_2026.pdf",
                          "65%",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}