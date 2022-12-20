part of './signin_bloc.dart';

abstract class SigninAuthEvent extends Equatable {
  late SigninState signinState;
  SigninAuthEvent(this.signinState, [List props = const []]) : super() {}
  @override
  List<Object> get props => [signinState];
}

class LoginStatusChangedEvent extends SigninAuthEvent {
  //LoginStatusChangedEvent() : super(AryyAuth.instance.auth);
  LoginStatusChangedEvent() : super(SigninState.clear);
}

class ClearEvent extends SigninAuthEvent {
  ClearEvent() : super(SigninState.clear);
}

class PasswordMismatchEvent extends SigninAuthEvent {
  PasswordMismatchEvent() : super(SigninState.passwordMismatch);
}

class PasswordNotLongEnoughEvent extends SigninAuthEvent {
  PasswordNotLongEnoughEvent() : super(SigninState.passwordNolongEnough);
}

class PasswordConfirmationNotLongEnoughEvent extends SigninAuthEvent {
  PasswordConfirmationNotLongEnoughEvent()
      : super(SigninState.passwordConfirmationNolongEnough);
}

class SigninEvent extends SigninAuthEvent {
  SigninEvent(
      {required String email,
      required String password,
      required String passwordConfirmation})
      : super(SigninState.initial) {
//    super.signinState = AryyAuth.instance.loginStatus = LoginState.loading;
    AryyAuthRepository()
        .signinWithAryy(
            email: email,
            password: password,
            passwordConfirmation: passwordConfirmation)
        .then((user) {
      // AryyAuth.instance.loginStatus = user?.id != null ? LoginState.success : LoginState.failure;
    });
  }
}
