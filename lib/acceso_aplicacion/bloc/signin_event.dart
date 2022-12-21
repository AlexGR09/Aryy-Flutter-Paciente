part of './signin_bloc.dart';

abstract class SigninAuthEvent extends Equatable {
  late SigninState signinState;
  SigninAuthEvent(this.signinState, [List props = const []]) : super();
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
  PasswordNotLongEnoughEvent() : super(SigninState.passwordNolongEnough) {
    print("PasswordNotLongEnoughEvent");
  }
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
    print("SigninEvent");
    // Temp here, since bloc doesn't properly work for now
    final RegExp nameExp = RegExp("^\\w{8,15}\$");
    if (nameExp.hasMatch(password)) {
      print("inside hasMatch password");
      PasswordNotLongEnoughEvent();
    }
    if (nameExp.hasMatch(passwordConfirmation)) {
      print("inside hasMatch password confirmation");
      PasswordConfirmationNotLongEnoughEvent();
    }

    if (password != passwordConfirmation) {
      PasswordMismatchEvent();
    }
//    super.signinState = AryyAuth.instance.loginStatus = LoginState.loading;
    // AryyAuthRepository()
    //     .signinWithAryy(
    //         email: email,
    //         password: password,
    //         passwordConfirmation: passwordConfirmation)
    //     .then((user) {
    //   // AryyAuth.instance.loginStatus = user?.id != null ? LoginState.success : LoginState.failure;
    // });
  }
}
