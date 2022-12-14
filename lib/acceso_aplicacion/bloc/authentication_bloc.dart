import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../_aryy_common_components/bloc/auth.dart';
import '../../_aryy_common_components/model/authentication_states.dart';
part './authentication_event.dart';

// Any state will be received with status<int>
class AuthenticationBloc extends Bloc<AuthEvent, Authentication> {
  // LoginBloc's inital state by default will be set as false (ie. new user opens the app)
  // ex: Firebase.onAuthStateChanged; Future<dataType>
  AuthenticationBloc() : super(Authentication.uninitialized) {
    // Handle incoming <AuthEvents> streams. emit: broadcast new state
    on<AuthEvent>((event, emit) async {
      // Then, broadcast a new state from the event received
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
//      emit(await AryyAuth.instance.onAuthStateChanged);
    });
  }

  // converts the incoming events into states the are consumed by the screen layer.
  Stream<Authentication> mapEventToState(
      Authentication authentication, AuthEvent event) async* {
    if (event is AuthEvent) {
      final bool hasToken = true; // future await <bool>
      if (hasToken) {
        yield Authentication.authenticated;
      }
    }
  }
}
