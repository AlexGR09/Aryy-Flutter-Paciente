import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../_aryy_common_components/bloc/auth.dart';
import '../../_aryy_common_components/model/authentication_state.dart';
part './authentication_event.dart';

// Any state will be received with status<int>
class AuthenticationBloc extends Bloc<AuthEvent, Authentication> {
  late StreamSubscription<Authentication> _authenticationStatusSubscription;
//  final AryyUserRepository userRepository;
  // LoginBloc's inital state by default will be set as false (ie. new user opens the app)
  // ex: Firebase.onAuthStateChanged; Future<dataType>
  AuthenticationBloc() : super(Authentication.uninitialized) {
    // Handle incoming <AuthEvents> streams. emit: broadcast new state
    on<AuthEvent>((event, emit) async {
      // Then, broadcast a new state from the event received
      // The argument type 'Stream<bool>' can't be assigned to the parameter type 'bool'.
//      emit(await AryyAuth.instance.onAuthStateChanged);
    });

    on<AuthenticationStatusChanged>(
      (event, emit) {
        switch (event.status) {
          case Authentication.unauthenticated:
            break;
          // return emit(const AuthenticationState.unauthenticated());
          case Authentication.authenticated:
            // final user = await _tryGetUser();
            break;
          case Authentication.uninitialized:
            // TODO: Handle this case.
            break;
          case Authentication.loading:
            // TODO: Handle this case.
            break;
        }
      },
    );

    _authenticationStatusSubscription =
        status.listen((event) => add(AuthenticationStatusChanged(event)));
  }

  final _controller = StreamController<Authentication>();

  Stream<Authentication> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield Authentication.unauthenticated;
    yield* _controller.stream;
  }

  // converts the incoming events into states the are consumed by the screen layer.
  Stream<Authentication> mapEventToState(
      Authentication authentication, AuthEvent event) async* {
    // determine whether or not a user is logged in.
    if (event is AppStarted) {
      // final bool hasToken = await userRepository.hasToken();
      yield true
          ? Authentication.authenticated
          : Authentication.unauthenticated;
    }

    if (event is LoggedIn) {
      yield Authentication.loading;
//      await userRepository.persistToken(event.token);
      yield Authentication.authenticated;
    }

    if (event is LoggedOut) {
      yield Authentication.loading;
//      await userRepository.deleteToken();
      yield Authentication.unauthenticated;
    }
  }

  // controller can be closed when it is no longer needed.
  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _controller.close();
    return super.close();
  }
}
