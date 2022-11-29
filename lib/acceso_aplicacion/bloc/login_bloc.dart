import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/auth_repository.dart';
part './login_event.dart';

// Nota: De acuerdo a la doña del video, el flujo de datos se maneja similar a React

// Any state will be received with status<int>
//class LoginBloc extends Bloc<PacienteEvent, bool> {
class LoginBloc extends Bloc<AuthEvent, bool> {
  // AuthRepository : AryyAuth simulation
  final auth = AuthRepository();
  // ex: Firebase.onAuthStateChanged; Future<dataType>
//  bool get authStatus => AryyAuth.instance.onAuthStateChanged;
  // Bloc's inital state by default
  LoginBloc() : super(false) {
    // Handle incoming <AuthEvents> streams
    on<AuthEvent>((event, emit) {
      event.isSessionActive ? auth.signInWithAryy() : auth.signOutWithAryy();
      print("receiving event.isSession=${event.isSessionActive}");
      // Then, broadcast a new state from the event received
      // event: AryyChangeEvent
      // emit: broadcast new state
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
      AryyAuth.instance.onAuthStateChanged.then((value) => emit(value));
    });
  }
}
