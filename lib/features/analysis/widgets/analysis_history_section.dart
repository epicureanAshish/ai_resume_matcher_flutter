import 'package:flutter/material.dart';

class AnalysisHistorySection extends StatelessWidget {
  const AnalysisHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Analyses",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 12),

        _historyTile(
          "Senior Flutter Developer",
          "82%",
          Colors.green,
        ),

        _historyTile(
          "Backend Python Developer",
          "71%",
          Colors.orange,
        ),

        _historyTile(
          "Lead Mobile Developer",
          "65%",
          Colors.red,
        ),
      ],
    );
  }

  Widget _historyTile(
      String title,
      String score,
      Color color,
      ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.analytics_outlined),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Container(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: color.withOpacity(.15),
              borderRadius:
              BorderRadius.circular(20),
            ),
            child: Text(
              score,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}