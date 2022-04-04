import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ev_ui_app/app/utils/global/global.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as GetX;

class NetworkUtil {
  NetworkUtil.internal();
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();


  static Dio? dio;
  static String token = "";

  factory NetworkUtil(String baseUrl) {
    dio = Dio();

    var isDebug = Global.isDebugApi;

    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };

    // dio?.options.baseUrl = baseUrl;
    dio?.options.connectTimeout = 60000; //5s
    dio?.options.receiveTimeout = 60000;
    //dio.interceptors.add(LogInterceptor());
    dio?.interceptors.add(
        InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
      // Do something before request is sent
      // if (NetworkUtil.token != null || NetworkUtil.token != "") {
      //   options.headers['authorization'] = NetworkUtil.token;
      // }

      if (isDebug) {
        log("-------------  Request   ------------------");
        log(options.uri.data.toString());
        log(options.uri.path.toString());
        log(options.headers.toString());
        //print(json.encode(options.data));
        log(options.data.toString());
      }
      return handler.next(options); //continue
    }, onResponse: (Response response, handler) async {
      if (isDebug) {
        log("-------------  Response   ------------------");
        log(response.headers.toString());
        log(response.data.toString());
        // Do something with response data
      }
      return handler.next(response); // continue
    }, onError: (DioError e, handler) async {
      log("-------------  Error   ------------------");
      log('requestOptions > ' + e.requestOptions.data.toString());
      log('message > ' + e.message.toString());

      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        GetX.Get.defaultDialog(
          title: 'Network Error',
          middleText: 'Please check your internet settings',
          textConfirm: 'Okay',
          confirmTextColor: Colors.amberAccent,
          textCancel: 'Cancel',
          onConfirm: () => GetX.Get.back(),
        );
      } else if (e.response?.statusCode == 400) {
        var ob = json.decode(e.response.toString());
        // GetX.Get.defaultDialog(
        //   title: 'Error',
        //   middleText: ob["error"]["message"],
        //   textConfirm: 'Okay',
        //   confirmTextColor: Colors.amberAccent,
        //   onConfirm: () => GetX.Get.back(),
        // );
      } else if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        GetX.Get.defaultDialog(
          title: 'Authentication Error',
          middleText:
              'Looks like you are logged in on another device, please login again.',
          textConfirm: 'Okay',
          confirmTextColor: Colors.amberAccent,
          textCancel: 'Cancel',
          onConfirm: () {
            // GetX.Get.toNamed('/login');
            try {
              GetX.Get.offAllNamed('/login');
              // GetX.Get.until((route) => GetX.Get.currentRoute == '/login');
            } catch (e) {
              print(e);
            }
          },
        );
      }
      return handler.next(e); //continue
    }));
    return _instance;
  }

  static getBasicAuth(String username, String token) {
    return "Basic " + base64.encode(utf8.encode(username + ":" + token));
  }

  Future<dynamic> get(var url) async {
    Response response = await dio!.get(url);
    return response.data;
  }

  Future<dynamic> post(String url, body) async {
    Response response = await dio!.post(url, data: body);
    return response.data;
  }

  Future<dynamic> put(String url, body) async {
    Response response = await dio!.put(url, data: body);
    return response.data;
  }

  Future<dynamic> delete(var url, showMessage) async {
    Response response = await dio!.delete(url);
    return response.data;
  }
}