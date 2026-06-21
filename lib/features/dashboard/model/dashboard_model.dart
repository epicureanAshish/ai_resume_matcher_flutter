import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    @JsonKey(name: 'analyses')
    required int analyses,

    @JsonKey(name: 'avg_score')
    required double avgScore,

    @JsonKey(name: 'resumes')
    required int resumes,

    @JsonKey(name: 'jobs')
    required int jobs,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$DashboardModelFromJson(json);
}