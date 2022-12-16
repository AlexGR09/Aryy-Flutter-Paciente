part of './login_bloc.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent(this.loginState, [List props = const []]) : super() {}
  late LoginState loginState;
  @override
  List<Object> get props => [loginState];
}

class LoginStatusChangedEvent extends LoginEvent {
  LoginStatusChangedEvent() : super(AryyAuth.instance.loginStatus);
}

class LoginSuccess extends LoginEvent {
  LoginSuccess() : super(LoginState.success);
}

class LoginFailure extends LoginEvent {
  LoginFailure() : super(LoginState.failure);
}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;

  LoginButtonPressed({
    required this.email,
    required this.password,
  }) : super(LoginState.initial) {
    super.loginState = AryyAuth.instance.loginStatus = LoginState.loading;
    AryyAuthRepository()
        .loginWithAryy(email: email, password: password)
        .then((user) {
      if (user?.fullName != null) {
        AryyAuth.instance.loginStatus = LoginState.success;
      } else {
        AryyAuth.instance.loginStatus = LoginState.failure;
      }
    });
  }

  @override
  List<Object> get props => [email, password];

  @override
  String toString() =>
      'LoginButtonPressed { username: $email, password: $password }';
}
