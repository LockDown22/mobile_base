// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
//
//
// import '../../../data/datasource/local/local_service.dart';
// import '../../constants/app_constants.dart';
// import '../../di/injector.dart';
// import '../../navigator/navigation/navigation.dart';
// import '../../navigator/router/app_router.dart';
//
// class AuthInterceptor implements InterceptorsWrapper {
//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     return handler.next(err);
//   }
//
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     if(sl.get<LocalService>().isAuthorized()){
//       options.headers.addAll({
//         // 'sToken' : '${sl.get<LocalService>().getSession()?.token}'
//       });
//     }
//
//     return handler.next(options);
//   }
//
//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     if (response.data['code'] == KeyBase.unauthorized) {
//       showDialog(
//           context: navigation.navigatorKey.currentContext!,
//           barrierDismissible: false,
//           builder: (_) {
//             return AlertDialog(
//               contentPadding: const EdgeInsets.all(24),
//               content: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const Text(
//                       'Phiên đăng nhập đã hết hạn, vui lòng đăng nhập lại'),
//                   kSpacingHeight16,
//                   TextButton(
//                       onPressed: () {
//                         navigation.goBack();
//                       },
//                       child: Text('OK',style: Theme.of(_).textTheme.bodyText1?.copyWith(color: ColorConstants.primaryColor),))
//                 ],
//               ),
//             );
//           }).then((value) => navigation.removeUntil(AppRouter.signIn));
//     } else {
//       return handler.next(response);
//     }}
// }
