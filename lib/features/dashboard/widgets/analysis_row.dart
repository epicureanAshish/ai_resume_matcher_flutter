import 'package:flutter/material.dart';

class AnalysisRow extends StatelessWidget {
  final String title;
  final String score;
  final Color color;

  const AnalysisRow({
    super.key,
    required this.title,
    required this.score,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.description),
      title: Text(title),
      subtitle: const Text("Resume_Arjun.pdf"),
      trailing: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
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
    );
  }
}