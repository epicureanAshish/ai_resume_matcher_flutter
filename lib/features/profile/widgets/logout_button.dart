import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding:
          const EdgeInsets.symmetric(
            vertical: 14,
          ),
        ),
        onPressed: () {},
        icon: const Icon(Icons.logout),
        label: const Text("Logout"),
      ),
    );
  }
}