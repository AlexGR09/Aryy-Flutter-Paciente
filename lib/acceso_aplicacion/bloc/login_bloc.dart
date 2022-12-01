import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_auth_repository.dart';
part './login_event.dart';

// Nota: De acuerdo a la doña del video, el flujo de datos se maneja similar a React

// Any state will be received with status<int>
class LoginBloc extends Bloc<AuthEvent, bool> {
  // AuthRepository: All Aryy authentication options

  // ex: Firebase.onAuthStateChanged; Future<dataType>
  // LoginBloc's inital state by default will be set as false (ie. new user opens the app)
  LoginBloc() : super(false) {
    // Handle incoming <AuthEvents> streams
    on<AuthEvent>((event, emit) async {
      print("LoginBloc event");
      //event.isSessionActive ? auth.loginWithAryy() : auth.logoutWithAryy();
      // Then, broadcast a new state from the event received
      // event: AryyChangeEvent
      // emit: broadcast new state
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
//      _authRepository.instance.onAuthStateChanged.then((value) => emit(value));
    });
  }
}
