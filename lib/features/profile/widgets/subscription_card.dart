import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.workspace_premium,
            color: Colors.amber,
          ),

          const SizedBox(width: 12),

          const Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium Plan",
                  style: TextStyle(
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                Text(
                  "Unlimited Resume Analysis",
                ),
              ],
            ),
          ),

          TextButton(
            onPressed: () {},
            child: const Text("Manage"),
          )
        ],
      ),
    );
  }
}