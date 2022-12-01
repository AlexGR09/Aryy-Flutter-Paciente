import 'dart:async';
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
  Future<bool> get onAuthStateChanged async =>
      await Future.value(AccessToken != "");
}
