import 'dart:async';
import '../bloc/login_bloc.dart';
import '../model/aryyUser.dart';

// 2. Aryy api authentications

class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  late AryyUser _aryyUser;
  late String AccessToken = "";

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

  // simple getter for testing, it can also be Future<bool>
  Future<Authentication> get onAuthStateChanged async {
    if (await Future.value(AccessToken != "")) {
      return Authentication.authenticated;
    }
    return Authentication.unauthenticated;
  }
}
