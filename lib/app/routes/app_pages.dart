import 'package:ev_ui_app/app/modules/home/view/home_vew.dart';
import 'package:ev_ui_app/app/modules/insights/view/insights_vew.dart';
import 'package:ev_ui_app/app/modules/login/view/login_view.dart';
import 'package:ev_ui_app/app/modules/settings/view/settings_view.dart';
import 'package:ev_ui_app/app/modules/supports/view/supports_view.dart';
import 'package:ev_ui_app/app/modules/usage_history/view/usage_history_vew.dart';
import 'package:ev_ui_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.LOGIN;

  static final routes = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppRoutes.USAGE_HISTORY,
      page: () => const UsageHistoryPage(),
    ),
    GetPage(
      name: AppRoutes.INSIGHTS,
      page: () => const InsightsPage(),
    ),
    GetPage(
      name: AppRoutes.SUPPORTS,
      page: () => SupportsPage(),
    ),
    GetPage(
      name: AppRoutes.SETTINGS,
      page: () => SettingsPage(),
    ),
  ];
}
