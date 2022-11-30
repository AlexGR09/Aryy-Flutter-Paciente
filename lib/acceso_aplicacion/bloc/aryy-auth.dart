import 'dart:async';
import '../repository/aryy-api.dart';
import '../../flutter_flow/flutter_flow_util.dart';

class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  // Aryy API response
  late bool _isUserLogged = false;
  late String _accessToken = "";
  String get AccessToken => _accessToken;

  // simple getter for testing, it can also be Future<bool>
  Future<bool> get onAuthStateChanged async =>
      await Future.value(_isUserLogged);

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

// Los datos extraidos de la respuesta de la api
  List<dynamic> listaDeDatos = [];

//void LoginPaciente({String? email, String? password}) async {}
  Future<bool> login({String? email, String? password}) async {
    ApiCallResponse? apiResult = await AryyApi.login(
      email: email,
      password: password,
    ).then((value) {
      if (value.succeeded) {
        final resultado = getJsonField(value.jsonBody, r'''$[*]''').toList();
        _accessToken = resultado[2];
        print("accesstoken: ${_accessToken}");
      }
      _isUserLogged = value.succeeded;
    });
    return _isUserLogged;
  }

  void logOut() {
    _isUserLogged = false;
  }
}
