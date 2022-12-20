import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_auth.dart';
import '../repository/aryy_auth_repository.dart';
import './login_state.dart';
part './login_event.dart';

class LoginBloc extends Bloc<LoginAuthEvent, LoginState> {
  // In addition, AuthenticationBloc updates the AuthenticationState when a user has entered valid credentials
//  final LoginBloc authenticationBloc;
  LoginBloc() : super(LoginState.initial) {
    on<LoginAuthEvent>(((event, emit) => emit(event.loginState)));
    on<LoginStatusChangedEvent>(
        ((event, emit) => emit(AryyAuth.instance.loginStatus)));
  }

  void logOut() {
//    _controller.add(Authentication.unauthenticated);
  }
}
