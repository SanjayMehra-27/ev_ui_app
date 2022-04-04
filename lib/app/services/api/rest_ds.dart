import 'dart:developer';

import 'package:ev_ui_app/app/utils/global/global.dart';

import 'network_util.dart';

class RestDatasource {
  NetworkUtil netUtil;

  RestDatasource(
    this.netUtil,
  ) {
    netUtil = NetworkUtil(Global.baseUrl);
  }

  
  get completedTransactionsURL => "transaction/GetCompletedTransList";

  Future<dynamic> completedTransactions() async {
    return netUtil.post(completedTransactionsURL, {
      {"currentPage": 1, "deviceId": "EVP00001", "pageSize": 10}
    }).then((value) {
      log(value.toString());
      return value;
    });
  }
}
