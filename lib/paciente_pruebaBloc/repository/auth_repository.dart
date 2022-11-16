// Todos los datos de la conexionexiones con cualquier api:
//  - API de Aryy
//  - Google

import 'dart:async';

class AuthRepository {
  Future<String> signInWithAryy() async {
    AryyAuth.instance.logIn();
    return "logged in";
  }

  Future<String> signOutWithAryy() async {
    AryyAuth.instance.logOut();
    return "logged out";
  }

  Future<String> signInWithGoogle() async {
    AryyAuth.instance.logIn();
    return "logged in";
  }

  Future<String> signOutWithGoogle() async {
    AryyAuth.instance.logIn();
    return "logged out";
  }
}

// Simulación de autenticación con AryyAPI
class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  AryyAuth._privateConstructor();

  late bool _isUserLogged;
  //
  late Stream<bool> streamAryyAuth;
  Stream<bool> get onAuthStateChanged {
    return streamAryyAuth;
  }

  AryyAuth() {
    streamAryyAuth = Stream.fromFuture(_onAuthStateChanged());
  }

  Future<bool> _onAuthStateChanged() async {
    await Future.delayed(const Duration(seconds: 1)); // Retraso simulado
    return _isUserLogged;
  }

  void logIn() {
    _isUserLogged = true;
  }

  void logOut() {
    _isUserLogged = false;
  }
}
