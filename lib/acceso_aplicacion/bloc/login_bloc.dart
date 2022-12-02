import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_auth.dart';
import '../repository/aryy_auth_repository.dart';
part './login_event.dart';

// Nota: De acuerdo a la doña del video, el flujo de datos se maneja similar a React

enum Authentication {
  uninitialized,
  unauthenticated,
  authenticated,
  loading,
}

// Any state will be received with status<int>
class LoginBloc extends Bloc<AuthEvent, Authentication> {
  // AuthRepository: All Aryy authentication options

  // ex: Firebase.onAuthStateChanged; Future<dataType>
  // LoginBloc's inital state by default will be set as false (ie. new user opens the app)
  LoginBloc() : super(Authentication.uninitialized) {
    // Handle incoming <AuthEvents> streams. emit: broadcast new state
    on<AuthEvent>((event, emit) async {
      // Then, broadcast a new state from the event received
      emit(await AryyAuth.instance.onAuthStateChanged);
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
    });
  }
}
