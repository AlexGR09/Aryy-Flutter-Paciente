import 'dart:async';
import '../../_aryy_common_components/model/authentication_state.dart';
import '../bloc/login_state.dart';
import '../model/aryy_user.dart';

// 2. Aryy api authentications

class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  late Authentication auth = Authentication.uninitialized;
  late LoginState loginStatus = LoginState.initial;
  late AryyUser _aryyUser;
  late String AccessToken = "";

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

  // simple getter for testing, it can also be Future<bool>
  Future<Authentication> get onAuthStateChanged async {
    if (await Future.value(AccessToken != "")) {
      return auth = Authentication.authenticated;
    }
    return Authentication.unauthenticated;
  }
}
