import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LocalService {
  final String kKeyAuth = 'key_auth';
  final String rememberMe = 'rememberMe';
  final String kKeyEmail = 'key_email';

  //NOTE: List key not delete when user logout
  final List<String> keyExcludes = [];

  final SharedPreferences sharedPreferences = GetIt.instance.get();

  bool isAuthorized() {
    return sharedPreferences.containsKey(kKeyAuth);
  }

  Future clear() async {
    final keys = sharedPreferences.getKeys();
    keys.removeAll(keyExcludes);
    for (final key in keys) {
      await sharedPreferences.remove(key);
    }
  }

  // Future saveAuth(SessionDto? session) {
  //   if (session == null) {
  //     return clear();
  //   } else {
  //     return sharedPreferences.setString(
  //         kKeyAuth, json.encode(session.toJson()));
  //   }
  // }

  // SessionModel? getSession() {
  //   if (isAuthorized()) {
  //     return SessionDto.fromJson(
  //         json.decode(sharedPreferences.getString(kKeyAuth)!));
  //   } else {
  //     return null;
  //   }
  // }

  Future<bool> getSaveLogin() async {
    return sharedPreferences.getBool(rememberMe) ?? false;
  }

  Future saveLogin(bool saveLogin) {
    return sharedPreferences.setBool(rememberMe, saveLogin);
  }


  Future saveEmail(String email){
    return sharedPreferences.setString(kKeyEmail, email.toLowerCase());
  }

  String? getEmail(){
    return sharedPreferences.getString(kKeyEmail);
  }
}
