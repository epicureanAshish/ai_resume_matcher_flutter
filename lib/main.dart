import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/router/app_router.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ResumeMatcherApp(),
    ),
  );
}

class ResumeMatcherApp extends ConsumerWidget {
  const ResumeMatcherApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'AI Resume Matcher',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}