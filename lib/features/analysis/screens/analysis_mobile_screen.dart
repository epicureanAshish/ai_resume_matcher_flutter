import 'package:ai_resume_matcher_flutter/features/analysis/widgets/analysis_history_section.dart';
import 'package:ai_resume_matcher_flutter/features/analysis/widgets/ats_score_card.dart';
import 'package:ai_resume_matcher_flutter/features/analysis/widgets/match_score_card.dart';
import 'package:ai_resume_matcher_flutter/features/analysis/widgets/missing_skills_card.dart';
import 'package:ai_resume_matcher_flutter/features/analysis/widgets/recommendation_card.dart';
import 'package:ai_resume_matcher_flutter/features/analysis/widgets/skills_matched_card.dart';
import 'package:flutter/material.dart';

class AnalysisMobileScreen extends StatelessWidget {
  const AnalysisMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Analysis",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            MatchScoreCard(),

            SizedBox(height: 16),

            ATSScoreCard(),

            SizedBox(height: 16),

            SkillsMatchedCard(),

            SizedBox(height: 16),

            MissingSkillsCard(),

            SizedBox(height: 16),

            RecommendationCard(),

            SizedBox(height: 20),

            AnalysisHistorySection(),
          ],
        ),
      ),

    );
  }
}