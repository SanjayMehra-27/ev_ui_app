import 'package:ev_ui_app/app/controller/completed_transactions.dart';
import 'package:ev_ui_app/app/services/theme_service/theme_service.dart';
import 'package:get/get.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());
    Get.put<CompletedTransactions>(CompletedTransactions());
  }
}
