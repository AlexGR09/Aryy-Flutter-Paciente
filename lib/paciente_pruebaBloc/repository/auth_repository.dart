// Todos los datos de la conexionexiones con cualquier api:
//  - API de Aryy
//  - Google

class AryyAuth {
  AryyAuth._privateConstructor();
  static final AryyAuth _instance = AryyAuth._privateConstructor();
  static AryyAuth get instance => _instance;

  // Aqui implementaremos la conexión con la api de login
  late bool isUserLogIn;

  // para pruebas
  void logIn() {
    isUserLogIn = true;
  }

  void logOut() {
    isUserLogIn = false;
  }
}

class AuthRepository {
  // Conexión en segundo plano para autenticar al paciente
  Future signIn() async {
    AryyAuth.instance.logIn();
  }

  Future signOut() async {
    AryyAuth.instance.logOut();
  }
}
