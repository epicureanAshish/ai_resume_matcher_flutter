import 'package:flutter/material.dart';

class SkillsMatchedCard extends StatelessWidget {
  const SkillsMatchedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Flutter",
      "Dart",
      "Firebase",
      "REST APIs",
      "Git"
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          const Text(
            "Matched Skills",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: skills
                .map(
                  (e) => Chip(
                label: Text(e),
                backgroundColor:
                Colors.green.shade50,
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}