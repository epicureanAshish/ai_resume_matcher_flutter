import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            const Text(
              "Welcome, Arjun 👋",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 16),
            CircleAvatar(
              radius: 22,
              backgroundColor:
              Colors.blue.withOpacity(.1),
              child: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}