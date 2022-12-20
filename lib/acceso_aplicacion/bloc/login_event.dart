part of './login_bloc.dart';

abstract class LoginAuthEvent extends Equatable {
  LoginAuthEvent(this.loginState, [List props = const []]) : super();
  late LoginState loginState;
  @override
  List<Object> get props => [loginState];
}

class LoginStatusChangedEvent extends LoginAuthEvent {
  LoginStatusChangedEvent() : super(AryyAuth.instance.loginStatus);
}

class LoginSuccessEvent extends LoginAuthEvent {
  LoginSuccessEvent() : super(LoginState.success);
}

class LoginFailureEvent extends LoginAuthEvent {
  LoginFailureEvent() : super(LoginState.failure);
}

class LoginEvent extends LoginAuthEvent {
  LoginEvent({
    required String email,
    required String password,
  }) : super(LoginState.initial) {
    super.loginState = AryyAuth.instance.loginStatus = LoginState.loading;
    AryyAuthRepository()
        .loginWithAryy(email: email, password: password)
        .then((user) {
      AryyAuth.instance.loginStatus =
          user?.id != null ? LoginState.success : LoginState.failure;
    });
  }
  // @override
  // List<Object> get props => [email, password];
  // @override
  // String toString() =>
  //     'LoginButtonPressed { username: $email, password: $password }';
}
