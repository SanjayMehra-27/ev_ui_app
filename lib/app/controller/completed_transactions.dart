import 'dart:developer';

import 'package:ev_ui_app/app/services/api/rest_ds.dart';
import 'package:get/get.dart';

class CompletedTransactions extends GetxController {
  @override
  void onInit() {
    RestDatasource restDatasource = RestDatasource();

    restDatasource.completedTransactions().then((value) {
      log(value.toString());
    });
    super.onInit();
  }
}
