import 'package:flutter/material.dart';

class MissingSkillsCard extends StatelessWidget {
  const MissingSkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final missing = [
      "AWS",
      "Docker",
      "Kubernetes",
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
            "Missing Skills",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: missing
                .map(
                  (e) => Chip(
                label: Text(e),
                backgroundColor:
                Colors.red.shade50,
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}