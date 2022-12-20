import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_auth_repository.dart';
import './signin_state.dart';
part './signin_event.dart';

class SigninBloc extends Bloc<SigninAuthEvent, SigninState> {
  late String _passwordTC = "";
  late String _passwordConfirmationTC = "";
  // In addition, AuthenticationBloc updates the AuthenticationState when a user has entered valid credentials
//  final AuthenticationBloc authenticationBloc;
  SigninBloc() : super(SigninState.initial) {
    on<SigninAuthEvent>(((event, emit) => emit(event.signinState)));
    // on<LoginStatusChangedEvent>(
    //     ((event, emit) => emit(AryyAuth.instance.loginStatus)));
  }

  onPasswordChange(String password) {
    verifyPasswordlength(
        password: password, signinAuthEvent: PasswordNotLongEnoughEvent());
    if (password.isNotEmpty) {
      _passwordTC = password;
      veryPasswordMatch();
    }
  }

  onPasswordConfirmationChange(String password) {
    verifyPasswordlength(
        password: password,
        signinAuthEvent: PasswordConfirmationNotLongEnoughEvent());
    if (password.isNotEmpty) {
      _passwordConfirmationTC = password;
      veryPasswordMatch();
    }
  }

  void veryPasswordMatch() {
    if (_passwordTC != _passwordConfirmationTC) {
      add(PasswordMismatchEvent());
    } else {
      add(ClearEvent());
    }
  }

  void verifyPasswordlength(
      {required String password, required SigninAuthEvent signinAuthEvent}) {
    if (password.length < 8) {
      add(signinAuthEvent);
    }
  }
}
