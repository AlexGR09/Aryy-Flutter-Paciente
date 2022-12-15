import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../_aryy_common_components/bloc/auth.dart';
import '../../_aryy_common_components/model/authentication_states.dart';
import '../repository/aryy_user_repository.dart';
part './authentication_event.dart';

// Any state will be received with status<int>
class AuthenticationBloc extends Bloc<AuthEvent, Authentication> {
  final AryyUserRepository userRepository;
  // LoginBloc's inital state by default will be set as false (ie. new user opens the app)
  // ex: Firebase.onAuthStateChanged; Future<dataType>
  AuthenticationBloc(this.userRepository)
      : super(Authentication.uninitialized) {
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
    // determine whether or not a user is logged in.
    if (event is AppStarted) {
      final bool hasToken = await userRepository.hasToken();
      yield hasToken
          ? Authentication.authenticated
          : Authentication.unauthenticated;
    }

    if (event is LoggedIn) {
      yield Authentication.loading;
      await userRepository.persistToken(event.token);
      yield Authentication.authenticated;
    }

    if (event is LoggedOut) {
      yield Authentication.loading;
      await userRepository.deleteToken();
      yield Authentication.unauthenticated;
    }
  }
}
