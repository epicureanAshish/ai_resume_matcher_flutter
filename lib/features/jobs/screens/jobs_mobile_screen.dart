import 'package:ai_resume_matcher_flutter/features/jobs/widgets/filter_chip_widget.dart';
import 'package:ai_resume_matcher_flutter/features/jobs/widgets/job_card.dart';
import 'package:flutter/material.dart';

class JobsMobileScreen extends StatelessWidget {
  const JobsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Jobs",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            /// Search
            TextField(
              decoration: InputDecoration(
                hintText: "Search jobs...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// Filters
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FilterChipWidget(
                    label: "Remote",
                  ),
                  FilterChipWidget(
                    label: "Flutter",
                  ),
                  FilterChipWidget(
                    label: "Senior",
                  ),
                  FilterChipWidget(
                    label: "Full Time",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            JobCard(
              title: "Senior Flutter Developer",
              company: "Google",
              location: "Bangalore, India",
              matchScore: 92,
              type: "Full Time",
            ),

            JobCard(
              title: "Mobile Application Engineer",
              company: "Amazon",
              location: "Hyderabad, India",
              matchScore: 84,
              type: "Remote",
            ),

            JobCard(
              title: "Flutter Developer",
              company: "Microsoft",
              location: "Pune, India",
              matchScore: 78,
              type: "Hybrid",
            ),

            JobCard(
              title: "Lead Mobile Developer",
              company: "Adobe",
              location: "Remote",
              matchScore: 65,
              type: "Contract",
            ),
          ],
        ),
      ),

    );
  }
}