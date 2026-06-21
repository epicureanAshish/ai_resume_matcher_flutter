import 'package:ai_resume_matcher_flutter/features/resumes/data/resume_model.dart';

abstract class ResumeRepository {
  Future<List<Resume>> getResumes();
}