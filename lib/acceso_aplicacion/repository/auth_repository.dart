import 'dart:async';

// Todos los datos de la conexionexiones con cualquier api:
//  - API de Aryy
//  - Google

// Background conection for user auth
class AuthRepository {
  Future<void> signInWithAryy() async {
    AryyAuth.instance.logIn();
  }

  Future<void> signOutWithAryy() async {
    AryyAuth.instance.logOut();
  }
  // Future<> signInWithGoogle() async {
  // Future<> signOutWithGoogle() async {
}

// Simulación de autenticación: AryyAPI
class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  // AryyAPI response simulation:
  late bool _isUserLogged = false;
  // simple getter for testing, it can also be Future<bool>
  Future<bool> get onAuthStateChanged async {
    bool stringFuture = await _onAuthStateChanged();
    return stringFuture;
  }

  AryyAuth() {}
  AryyAuth._privateConstructor() {}

  // simple autenticacion solo para experimentar sin api
  Future<bool> _onAuthStateChanged() async {
    return Future.value(_isUserLogged);
  }

  void logIn() {
    _isUserLogged = true;
  }

  void logOut() {
    _isUserLogged = false;
  }
}
