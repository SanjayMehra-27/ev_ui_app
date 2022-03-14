import 'package:ev_ui_app/app/modules/home/view/home_vew.dart';
import 'package:ev_ui_app/app/modules/usage_history/view/usage_history_vew.dart';
import 'package:ev_ui_app/app/routes/app_routes.dart';
import 'package:get/get.dart';
class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppRoutes.USAGE_HISTORY,
      page: () => const UsageHistoryPage(),
    ),
  ];
}
