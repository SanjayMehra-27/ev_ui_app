import 'dart:convert';
import 'dart:developer';

import 'package:ev_ui_app/app/model/completed_transactions.dart';
import 'package:ev_ui_app/app/utils/global/global.dart';

import 'network_util.dart';
import 'package:dio/dio.dart';

class RestDatasource {
  late NetworkUtil netUtil;
  late Dio dio;

  RestDatasource() {
    netUtil = NetworkUtil(Global.baseUrl);
    dio = Dio();
  }
  get baseURL => Global.baseUrl;
  get completedTransactionsURL => baseURL + "transaction/GetCompletedTransList";


  Future<dynamic> completedTransactions() async {
    
    dio.post(completedTransactionsURL, data: {
      "currentPage": 1,
      "deviceId": "EVP00001",
      "pageSize": 10
    }).then((dynamic value) {
       value = value.data["responseData"]["data"];
       List<CompletedTransaction> completedTransaction = List<CompletedTransaction>.from(value.map((i) => CompletedTransaction.fromJson(i)));

      log(completedTransaction[0].toString());
    });
  }
}
