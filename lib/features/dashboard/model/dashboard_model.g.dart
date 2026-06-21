// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      analyses: (json['analyses'] as num).toInt(),
      avgScore: (json['avg_score'] as num).toDouble(),
      resumes: (json['resumes'] as num).toInt(),
      jobs: (json['jobs'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'analyses': instance.analyses,
      'avg_score': instance.avgScore,
      'resumes': instance.resumes,
      'jobs': instance.jobs,
    };
