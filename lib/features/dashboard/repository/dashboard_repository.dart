import 'package:ai_resume_matcher_flutter/features/dashboard/model/dashboard_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/dio_provider.dart';

part 'dashboard_repository.g.dart';

@riverpod
DashboardRepository dashboardRepository(
    Ref ref,
    ) {
  return DashboardRepository(
    ref.read(dioProvider),
  );
}

class DashboardRepository {
  final Dio _dio;

  DashboardRepository(this._dio);

  Future<DashboardModel> getDashboard() async {
    final response =
    await _dio.get('/dashboard');

    return DashboardModel.fromJson(
      response.data,
    );
  }
}