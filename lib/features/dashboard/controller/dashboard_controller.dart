import 'package:ai_resume_matcher_flutter/features/dashboard/state/dashboard_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_controller.g.dart';

@riverpod
class DashboardController
    extends _$DashboardController {

  @override
  DashboardState build() {
    return const DashboardState();
  }

  void setLoading(bool value) {
    state = state.copyWith(
      isLoading: value,
    );
  }

  void setSelectedTab(int index) {
    state = state.copyWith(
      selectedTab: index,
    );
  }

  Future<void> loadDashboard() async {
    state = state.copyWith(
      isLoading: true,
    );

    await Future.delayed(
      const Duration(seconds: 2),
    );

    state = state.copyWith(
      isLoading: false,
      userName: "Arjun",
      totalAnalyses: 124,
      avgScore: 76,
      resumesCount: 12,
      jobsCount: 18,
    );
  }

  // Future<void> loadDashboard() async {
  //   try {
  //     state = state.copyWith(isLoading: true);
  //
  //     final repository = ref.read(
  //       dashboardRepositoryProvider,
  //     );
  //
  //     final dashboard = await repository.getDashboard();
  //
  //     state = state.copyWith(
  //       isLoading: false,
  //       totalAnalyses: dashboard.analyses,
  //       avgScore: dashboard.avgScore,
  //       resumesCount: dashboard.resumes,
  //       jobsCount: dashboard.jobs,
  //     );
  //   } catch (e) {
  //     state = state.copyWith(
  //       isLoading: false,
  //     );
  //   }
  // }
}