import 'package:ai_resume_matcher_flutter/features/resumes/widgets/resume_item.dart';
import 'package:ai_resume_matcher_flutter/features/resumes/widgets/upload_resume_card.dart';
import 'package:flutter/material.dart';

class ResumeMobileScreen extends StatelessWidget {
  const ResumeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Resumes',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const UploadResumeCard(),

            const SizedBox(height: 24),

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Uploaded Resumes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            ResumeItem(
              fileName: 'Resume_2026.pdf',
              date: 'May 20, 2026',
              isParsed: true,
            ),

            ResumeItem(
              fileName: 'Resume_Flutter.pdf',
              date: 'May 18, 2026',
              isParsed: true,
            ),

            ResumeItem(
              fileName: 'Germany_Resume.pdf',
              date: 'May 10, 2026',
              isParsed: true,
            ),
          ],
        ),
      ),

    );
  }
}