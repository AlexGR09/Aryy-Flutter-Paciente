/*import '../repository/auth_repository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class PacienteBloc implements Bloc {
  final auth = AuthRepository();

  // De acuerdo a la doña del video, el flujo de datos se maneja similar a React
  // ex: Firebase.onAuthStateChanged;
  Stream<bool> get authStatus => AryyAuth.instance.onAuthStateChanged;

  Future<String> signIn() async {
    await Future.delayed(const Duration(seconds: 2)); // Retraso simulado
    auth.signInWithAryy();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}*/
