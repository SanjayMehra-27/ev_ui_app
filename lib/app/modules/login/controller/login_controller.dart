import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
class SettingsController extends GetxController {
  final isDarkModeEnable = false.obs;

  @override
  void onInit() {
    super.onInit();
  }
}

get isDarkModeEnable => GetStorage().read('isDarkMode').obs ?? false.obs;