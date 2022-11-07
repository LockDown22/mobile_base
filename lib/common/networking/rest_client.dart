


import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:package_info_plus/package_info_plus.dart';

class RestClient {
  late Dio _dio;

  String get baseUrl => _dio.options.baseUrl;

  BaseOptions get options => _dio.options;

  Interceptors get interceptors => _dio.interceptors;

  Dio get dio => _dio;

  RestClient(String baseUrl,
      {required List<Interceptor> interceptors,
        HttpClientAdapter? httpClientAdapter,
        Duration timeout = const Duration(seconds: 30)}) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      contentType: "application/json",
      receiveDataWhenStatusError: true,
      connectTimeout: timeout.inMilliseconds,
      receiveTimeout: timeout.inMilliseconds,
    );

    setHeader();

    _dio = Dio(options);
    if (httpClientAdapter != null) {
      _dio.httpClientAdapter = httpClientAdapter;
    }

    _dio.interceptors.addAll(interceptors);
  }

  void setHeader() async {
    if (Platform.isAndroid) {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      options.headers['OS-NAME'] = 'android';
      options.headers['OS-VERSION'] = '${androidInfo.version.release}';
      options.headers['DEVICE-NAME'] = '${androidInfo.model}';
      options.headers['DEVICE-TOKEN'] = androidInfo.id;
    } else {
      IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
      options.headers['OS-NAME'] = 'ios';
      options.headers['OS-VERSION'] = '${iosInfo.systemVersion}';
      options.headers['DEVICE-NAME'] = '${iosInfo.model}';
      options.headers['DEVICE-TOKEN'] = iosInfo.identifierForVendor;
    }

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    options.headers['APP-VERSION'] = packageInfo.version;

    // String? token = await FirebaseMessaging.instance.getToken();
    // options.headers['FCM-TOKEN'] = token;
  }
}

