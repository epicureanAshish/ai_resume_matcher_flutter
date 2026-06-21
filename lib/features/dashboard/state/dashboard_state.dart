import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';
part 'dashboard_state.g.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool isLoading,
    @Default('') String userName,
    @Default(0) int totalAnalyses,
    @Default(0.0) double avgScore,
    @Default(0) int resumesCount,
    @Default(0) int jobsCount,
    @Default(0) int selectedTab,
  }) = _DashboardState;

  factory DashboardState.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$DashboardStateFromJson(json);
}