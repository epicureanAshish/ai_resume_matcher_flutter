import 'package:ai_resume_matcher_flutter/core/utils/utils.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/screens/dashboard_mobile.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/screens/dashboard_tablet.dart';
import 'package:ai_resume_matcher_flutter/features/dashboard/screens/dashboard_web.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    switch(getCustomScreenType(context)){
      case CustomScreenType.mobile: return DashboardMobile();
      case CustomScreenType.tablet: return DashboardTablet();
      case CustomScreenType.desktop: return DashboardWeb();
    }
  }
}