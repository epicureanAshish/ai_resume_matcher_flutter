// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardState _$DashboardStateFromJson(Map<String, dynamic> json) =>
    _DashboardState(
      isLoading: json['isLoading'] as bool? ?? false,
      userName: json['userName'] as String? ?? '',
      totalAnalyses: (json['totalAnalyses'] as num?)?.toInt() ?? 0,
      avgScore: (json['avgScore'] as num?)?.toDouble() ?? 0.0,
      resumesCount: (json['resumesCount'] as num?)?.toInt() ?? 0,
      jobsCount: (json['jobsCount'] as num?)?.toInt() ?? 0,
      selectedTab: (json['selectedTab'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DashboardStateToJson(_DashboardState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'userName': instance.userName,
      'totalAnalyses': instance.totalAnalyses,
      'avgScore': instance.avgScore,
      'resumesCount': instance.resumesCount,
      'jobsCount': instance.jobsCount,
      'selectedTab': instance.selectedTab,
    };
