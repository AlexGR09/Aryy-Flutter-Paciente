import 'dart:async';
import '../repository/auth_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part './paciente_event.dart';

// PacienteEvent: Any state can be received, int: status
class PacienteBloc extends Bloc<PacienteEvent, int> {
  // Bloc's inital state
  PacienteBloc() : super(0) {
    // Handle incoming <AryyChangeEvents> streams
    on<AryyChangeEvent>((event, emit) {
      // broadcast a new state from event received
      // event: AryyChangeEvent
      // emit: broadcast new state
      print("onEvent");
      emit(event.newIndexEvent);
    });
  }
}

abstract class AuthEvent {}

class LoginEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

abstract class AuthState {}

class UnAuthenticatedState extends AuthState {}

class AuthenticatedState extends AuthState {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // To emit a new state, you need to handle triggered events.
  // To do this, you will have to register an event handler using the on <Event>
  // API inside the constructor body as follows
  AuthBloc() : super(UnAuthenticatedState()) {
    on<LoginEvent>((event, emit) {
      emit(AuthenticatedState());
    });

    on<LogoutEvent>((event, emit) {
      emit(UnAuthenticatedState());
    });
  }
}

// A Cubit is similar to Bloc but has no notion of events and relies on methods to [emit] new states.
// The bloc widgets help to rebuild/notify the UI components in response to a state change. Since cubit is just a subclass of bloc, you can use cubit anywhere that a bloc is required when working with bloc widgets.
class AuthCubit extends Cubit<AuthState> {
  // To emit a new state, you will have to call a function on the cubit object,
  // each cubit can emit a new state using the emit method as follows;
  AuthCubit() : super(UnAuthenticatedState());
  void login() => emit(AuthenticatedState());
  void logout() => emit(UnAuthenticatedState());
}

class PacienteBlocOld extends Bloc {
  PacienteBlocOld(super.initialState) {
    on<LoginEvent>((event, emit) {});
    on<LogoutEvent>((event, emit) {});
    on((event, emit) {
      print("event is happening?");
    });
  }

  // La conexión con el repositorio de autentificacion
  final auth = AuthRepository();

  // De acuerdo a la doña del video, el flujo de datos se maneja similar a React
  // ex: Firebase.onAuthStateChanged;
  Stream<bool> get authStatus => AryyAuth.instance.onAuthStateChanged;

  Future<String> signIn() async {
    auth.signInWithAryy();
    return "logged in in Bloc";
  }

  Future<String> singOut() async {
    auth.signOutWithAryy();
    return "logged out in Bloc";
  }
}
