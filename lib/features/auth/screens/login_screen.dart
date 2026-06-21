import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {
  final emailController =
  TextEditingController();

  final passwordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding:
            const EdgeInsets.all(24),
            child: Column(
              mainAxisSize:
              MainAxisSize.min,
              children: [
                const Text(
                  'AI Resume Matcher',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 24),

                AppTextField(
                  controller:
                  emailController,
                  hint: 'Email',
                ),

                const SizedBox(height: 16),

                AppTextField(
                  controller:
                  passwordController,
                  hint: 'Password',
                ),

                const SizedBox(height: 24),

                AppButton(
                  title: 'Login',
                  onPressed: () {
                    context.go(
                      '/dashboard',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}