import 'package:flutter/material.dart';

class ATSScoreCard extends StatelessWidget {
  const ATSScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ATS Compatibility",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "88%",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}