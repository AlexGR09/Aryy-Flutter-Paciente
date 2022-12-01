import 'dart:async';
import '../model/aryyUser.dart';
import '../repository/aryy_api.dart';
import '../../flutter_flow/flutter_flow_util.dart';

// 2. Aryy api authentications

class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  late String _accessToken;
  String get AccessToken => _accessToken;

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

  // Sign in using Aryy user credentials
  Future<AryyUser> loginWithCredentials(
      {String? email, String? password}) async {
    return AryyUser.fromJson(
        json: await AryyApi.login(
      email: email,
      password: password,
    ).then((connection) {
      if (connection.succeeded) {
        final resultado =
            getJsonField(connection.jsonBody, r'''$[*]''').toList();
        // para pruebas temporales:
        _accessToken = resultado[2];
        print("accesstoken: ${_accessToken}");
        var data = resultado[0];
        return resultado[0];
      }
      return
          // empty ary user?
          getJsonField(connection.jsonBody, r'''$[*]''').toList();
      // empty?
      ;
    }));
  }
}
