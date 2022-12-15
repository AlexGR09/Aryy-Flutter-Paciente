import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_user_repository.dart';
import './login_states.dart';
import './authentication_bloc.dart';
part './login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // AryyUserRepository helps to authenticate a user given a username and password
//  final AryyUserRepository userRepository;
  // In addition, AuthenticationBloc updates the AuthenticationState when a user has entered valid credentials
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
//    required this.userRepository,
    required this.authenticationBloc,
  }) : super(LoginState.initial);

  @override
  Stream<LoginState> mapEventToState(
    LoginState currentState,
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield LoginState.loading;

//       try {
//         final token = await userRepository.authenticate(
//           username: event.username,
//           password: event.password,
//         );

//         authenticationBloc.add(LoggedIn(token: token));
//         yield LoginState.initial;
//       } catch (error) {
//         yield LoginState.failure;
// //         error.toString();
//       }
    }
  }
}
