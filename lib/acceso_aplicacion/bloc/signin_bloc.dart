import 'package:aryy_front/acceso_aplicacion/widgets/password_warning_widget.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../model/warning_label.dart';
import './signin_state.dart';
part './signin_event.dart';

class SigninBloc extends Bloc<SigninAuthEvent, SigninState> {
  // In addition, AuthenticationBloc updates the AuthenticationState when a user has entered valid credentials
//  final AuthenticationBloc authenticationBloc;
  SigninBloc() : super(SigninState.initial) {
    on<SigninAuthEvent>(((event, emit) {
      print("Emit: ${event.signinState}");
      emit(event.signinState);
    }));
    // on<LoginStatusChangedEvent>(
    //     ((event, emit) => emit(AryyAuth.instance.loginStatus)));
  }

  onPasswordChange(String password) {
    verifyPasswordlength(password: password);
    if (password.isNotEmpty) {}
  }

  onPasswordConfirmationChange(String password) {
    verifyPasswordlength(password: password);
    if (password.isNotEmpty) {}
  }

  bool veryPasswordMatch(
      {required String password, required String passwordConfirmation}) {
    return password != passwordConfirmation;
  }

  PasswordWarning verifyPasswordlength({required String password}) {
    if (password.length < 8) {
      return passwordLengthWarning;
    }
    return clearWarning;
  }
}
