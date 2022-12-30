import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/aryy_auth_repository.dart';
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

  void signin(
      {required String emailphonenumber,
      required String password,
      required String passwordConfirmation}) {
    if (verifyPasswogirdlength(password: password)) {
      add(PasswordNotLongEnoughEvent());
    } else if (verifyPasswogirdlength(password: passwordConfirmation)) {
      add(PasswordConfirmationNotLongEnoughEvent());
    } else if (veryPasswordMatch(
        password: password, passwordConfirmation: passwordConfirmation)) {
      add(PasswordMismatchEvent());
    } else {
      add(SigninEvent(
          email: emailphonenumber,
          password: password,
          passwordConfirmation: passwordConfirmation));
    }
  }

  bool veryPasswordMatch(
      {required String password, required String passwordConfirmation}) {
    return password != passwordConfirmation;
  }

  // Temp here, since bloc doesn't properly work for now
  bool verifyPasswogirdlength({required String password}) {
    final RegExp nameExp = RegExp("^\\w{8}\$");
    return !nameExp.hasMatch(password);
  }
}
