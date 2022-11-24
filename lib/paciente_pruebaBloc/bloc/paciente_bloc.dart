import 'dart:async';
import '../repository/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
part './paciente_event.dart';

// Nota: De acuerdo a la doña del video, el flujo de datos se maneja similar a React

// Any state will be received with status<int>
//class PacienteBloc extends Bloc<PacienteEvent, bool> {
class PacienteBloc extends Bloc<AuthEvent, bool> {
  // AuthRepository : AryyAuth simulation
  final auth = AuthRepository();
  // ex: Firebase.onAuthStateChanged; Future<dataType>
//  bool get authStatus => AryyAuth.instance.onAuthStateChanged;
  // Bloc's inital state by default
  PacienteBloc() : super(false) {
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
      print("emit or event?");
    });
  }
}
