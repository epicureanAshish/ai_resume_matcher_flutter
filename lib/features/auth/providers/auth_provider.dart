import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final authProvider =
StateNotifierProvider<AuthNotifier, bool>(
      (ref) => AuthNotifier(),
);

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  Future<void> login() async {
    state = true;

    await Future.delayed(
      const Duration(seconds: 1),
    );

    state = false;
  }
}