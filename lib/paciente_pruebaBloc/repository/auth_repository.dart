import 'dart:async';

// Todos los datos de la conexionexiones con cualquier api:
//  - API de Aryy
//  - Google

class AuthUser {
  final String uid;
  final String email;
  AuthUser({required this.uid, required this.email});
}

class AuthRepository {
  // Conexión en segundo plano para autenticar al paciente
  Future<void> signInWithAryy() async {
    AryyAuth.instance.logIn();
  }

  Future<void> signOutWithAryy() async {
    AryyAuth.instance.logOut();
  }

  // Future<> signInWithGoogle() async {
  // Future<> signOutWithGoogle() async {
}

// Simulación de autenticación con AryyAPI
class AryyAuth {
  static AryyAuth get instance => _instance;
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  late bool _isUserLogged = false;
  late Stream<bool> streamAryyAuth;
  Stream<bool> get onAuthStateChanged => streamAryyAuth;

  AryyAuth._privateConstructor() {
    streamAryyAuth = Stream.fromFuture(_onAuthStateChanged());
    print("consturctor aryyAuth");
  }

  AryyAuth() {
    streamAryyAuth = Stream.fromFuture(_onAuthStateChanged());
  }

  Future<bool> _onAuthStateChanged() async {
    return _isUserLogged;
  }

  // simple autenticacion solo para experimentar sin api
  void logIn() {
    _isUserLogged = true;
  }

  void logOut() {
    _isUserLogged = false;
  }
}
