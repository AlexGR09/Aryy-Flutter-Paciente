import 'dart:async';
import '../model/aryyUser.dart';
import '../repository/aryy_api.dart';
import '../../flutter_flow/flutter_flow_util.dart';

// 2. Aryy api authentications

class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  late AryyUser _aryyUser;
  late String _accessToken = "";
  String get AccessToken => _accessToken;

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

  // simple getter for testing, it can also be Future<bool>
  // simple getter for testing, it can also be Future<bool>
  Future<bool> get onAuthStateChanged async =>
      await Future.value(_accessToken != "");

  // Sign in using Aryy user credentials
  void loginWithCredentials({String? email, String? password}) async {
    _aryyUser = AryyUser.fromJson(
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
      return getJsonField(connection.jsonBody, r'''$[*]''').toList();
      ;
    }));
  }
}
